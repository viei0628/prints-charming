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
    @booking.printer = Printer.find(params[:printer_id])
    @booking.user = current_user 
    @booking.status = "Pending"
    if @booking.save 
      redirect_to booking_path(@booking)
    else 
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @printer = @booking.printer
    @user = @printer.user
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:booking][:status]
    if @booking.save
      redirect_to booking_path(@booking)
    else 
      render :edit
    end
  end

  def destroy
    @printer = Booking.find(params[:id]).printer
    Booking.destroy(params[:id])
    redirect_to printer_bookings_path(@printer)
  end

  private 
  def booking_params
    params.require(:booking).permit(:meeting_time, :status)
  end

  
end
