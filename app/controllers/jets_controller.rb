class JetsController < ApplicationController
  def index 
    if params[:departure].nil?
      @jets = Jet.all
    else
      @jets = Jet.where("origin ILIKE ?", "%#{params[:departure]}%")
    end
  end

  def show
    @jet = Jet.find(params[:id])
    @user = @jet.user
    @booking = Booking.new
  end
end
