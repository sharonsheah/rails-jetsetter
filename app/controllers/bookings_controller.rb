class BookingsController < ApplicationController
    before_action :set_booking, only: [ :show, :edit, :update ]
    
    def create
        @booking = Booking.new(params)
    end

    # edit
    # update
    def show;end

    private

    def set_booking
        @booking = Booking.find(params[:id])
    end

end
