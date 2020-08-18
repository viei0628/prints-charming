class BookingsController < ApplicationController
  def index 
    @printer = Printer.find(params[:printer_id])
    @bookings = @printer.bookings
  end

  def new 
    @printer = Printer.find(params[:printer_id])
    @booking = Booking.new
  end

  def create 
    @booking = Booking.new(booking_params)
  end

  def booking_params
    params.require(:booking).permit(:meeting_time, :status)
  end
end
