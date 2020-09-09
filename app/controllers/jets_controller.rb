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
end