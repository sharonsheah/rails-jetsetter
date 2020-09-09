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
    @user = User.find(param[:user_id])
    @jet = Jet.new
  end

  def create
    @jet = Jet.new(jet_params)
    @user = User.find(param[:user_id])
    @jet.user = @user
    if @jet.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end
  
  private 

  def jet_params
    params.require(:jet).permit(:name, :description, :pilot_name, :origin, :capacity, :price)
  end
end
