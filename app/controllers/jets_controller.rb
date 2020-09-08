class JetsController < ApplicationController
  def index
    @jets = Jet.all
  end

  def show
    @params = params
    @jet = Jet.find(params[:id])
    @user = @jet.user
    @booking = Booking.new
  end
end
