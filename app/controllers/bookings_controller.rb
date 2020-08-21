class BookingsController < ApplicationController

 before_action :authenticate_user!, except: [:index, :show]

  def index
    @printer = Printer.find(params[:printer_id])
    @bookings = policy_scope(@printer.bookings)
  end

  def new
    @printer = Printer.find(params[:printer_id])
    @booking = Booking.new
    request.remote_ip
    raise
    authorize @printer
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.printer = Printer.find(params[:printer_id])
    @booking.user = current_user
    @booking.status = "Pending"
    authorize @booking
    if @booking.save
      redirect_to my_bookings_path
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @printer = @booking.printer
    @user = @printer.user
    authorize @booking
    authorize @printer
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.status = params[:booking][:status]
    authorize @booking
    if @booking.save
      redirect_to my_bookings_path(@booking)
    else
      render :edit
    end
  end

  def destroy
    @printer = Booking.find(params[:id]).printer
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to printer_bookings_path(@printer)
  end

  def my_bookings
    if current_user.is_owner
      @bookings = Booking.joins(:printer).where(printers: {user: current_user})
    else
      @bookings = current_user.bookings
    end
    @review = Review.new
    authorize Booking
  end

  private
  def booking_params
    params.require(:booking).permit(:meeting_time, :status)
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

end
