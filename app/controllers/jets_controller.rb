class JetsController < ApplicationController
  def index
    if params[:departure].present? && params[:passengers].present? 
      @jets = Jet.where("origin LIKE ? AND capacity >= ?", "#{params[:departure]}", "#{params[:passengers]}")
    elsif params[:departure].present? 
      @jets = Jet.where("origin LIKE ?", "#{params[:departure]}")
    elsif params[:passengers].present? 
      @jets = Jet.where("capacity >= ?", "#{params[:passengers]}")
    else
      @jets = Jet.all

      @markers = @jets.geocoded.map do |jet|
      {
        lat: jet.latitude,
        lng: jet.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { jet: jet })
      }
      end
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
