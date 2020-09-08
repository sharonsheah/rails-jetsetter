class BookingsController < ApplicationController
    before_action :set_booking, only: [ :show, :edit, :update ]
    # def new
    #     @booking = Booking.new
    # end

    # create
    # edit
    # update
    def show;end

    private

    def set_booking
        @booking = Booking.find(params[:id])
    end

end
