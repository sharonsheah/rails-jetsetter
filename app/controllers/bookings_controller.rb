class BookingsController < ApplicationController
    before_action :set_booking, only: [ :show, :edit, :update ]
    
    def create
        @booking = Booking.new(booking_params)
        @booking.user = current_user
        @booking.jet = Jet.find(params[:jet_id])
        @booking.save!
        
        redirect_to booking_path(@booking)
    end

    def edit; end

    def update
        if @booking.update(booking_params)
            redirect_to booking_path(@booking), notice: 'Booking was successfully updated.'
        else
            render :edit
        end
    end


    def show; end

    private

    def set_booking
        @booking = Booking.find(params[:id])
<<<<<<< HEAD
    end

    def booking_params
        params.require(:booking).permit(:total_price, :start_date, :end_date, :passengers, :booking_status, :destination)
=======

    end

    def booking_params
        params.require(:booking).permit(:total_price, :jet_id, :user_id, :start_date, :end_date, :passengers, :booking_status, :destination)
>>>>>>> master
    end
end
