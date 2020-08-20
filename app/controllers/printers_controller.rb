class PrintersController < ApplicationController

 before_action :authenticate_user!, except: [:index, :show]

  def index
    @printers = policy_scope(Printer)
    @printers = @printers.geocoded
    @markers = @printers.map do |printer|
      {
        lat: printer.latitude,
        lng: printer.longitude,
        infoWindow: render_to_string(partial: "shared/info_window", locals: { printer: printer })
      }
    end
  end

  def show
    @printer = Printer.find(params[:id])
    @booking = Booking.new
    authorize @printer
    authorize @booking
  end

  def new
    @printer = Printer.new
    authorize @printer
  end

  def create
    @printer = Printer.new(printer_params)
    @printer.user = current_user
    authorize @printer
    if @printer.save
      redirect_to printer_path(@printer)
    else
      render :new
    end
  end

  def destroy
    set_printer
    @printer.destroy
    redirect_to printers_path
  end

  def my_printers
    @printers = current_user.printers
    authorize @printers

  end

  private

  def printer_params
    params.require(:printer).permit(:model, :price, :photo)
  end

  def set_printer
    @printer = Printer.find(params[:id])
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
