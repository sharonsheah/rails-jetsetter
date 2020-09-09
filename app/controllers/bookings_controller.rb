class BookingsController < ApplicationController
    before_action :set_booking, only: [ :show, :edit, :update ]
    
    def create
        @booking = Booking.new(booking_params)
        # @booking.jet = Jet.find(params[:jet_id])
        # @booking.user = User.find(params[:user_id])
        @booking.save!
        
        redirect_to booking_path(@booking)
    end

    # edit
    # update
    def show;end

    private

    def set_booking
        @booking = Booking.find(params[:id])

    end

    def booking_params
        params.require(:booking).permit(:total_price, :jet_id, :user_id, :start_date, :end_date, :passengers, :booking_status, :destination)
    end
end
