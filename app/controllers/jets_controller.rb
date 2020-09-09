class JetsController < ApplicationController
  def index
    if params[:departure] && params[:passengers]
      @jets = Jet.where("departure LIKE ?", "#{params[:departure]}")
    elsif params[:departure]
      @jets = Jet.where("departure LIKE ?", "#{params[:departure]}")
    elsif params[:passengers]
      @jets = Jet.where("passengers LIKE ?", "#{params[:passengers]}")
    else
      @jets = Jet.all
    end
  end

  def show
    @jet = Jet.find(params[:id])
    @user = @jet.user
    @booking = Booking.new
  end

  def new
    @user = User.find(params[:user_id])
    @jet = Jet.new
  end

  def create
    @jet = Jet.new(jet_params)
    @user = User.find(params[:user_id])
    @jet.user = @user
    if @jet.save
      redirect_to user_path(@user)
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
