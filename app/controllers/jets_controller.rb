class JetsController < ApplicationController
  def index 
    if params[:departure].nil?
      @jets = Jet.all
    else
      @jets = Jet.where("origin LIKE ?", "%#{params[:departure]}%")
    end
  end

  def show
    @jet = Jet.find(params[:id])
    @user = @jet.user
    @booking = Booking.new
  end

  def new
    @jet = Jet.new
    @user = @jet.user
  end

  def create
    @jet = Jet.new(jet_params)
    @user = current_user
    @jet.user = @user
    if @jet.save
      redirect_to jets_path
    else
      render :new
    end
  end
  
  def edit
    @jet = Jet.find(params[:id])
  end

  def update
    @jet = Jet.find(params[:id])
    @jet.update(jet_params)
    redirect_to jet_path(@jet)
  end

  private 

  def jet_params
    params.require(:jet).permit(:name, :description, :pilot_name, :origin, :capacity, :price)
  end
end
