class PrintersController < ApplicationController
  def index
    @printers = Printer.all
  end

  def show
    @printer = Printer.find(params[:id])
  end

  def new
    @printer = Printer.new
  end

  def create
    @printer = Printer.new(printer_params)
    @printer.user = current_user
    if @printer.save
      redirect_to printer_path(@printer)
    else
      render :new
    end
    #binding.pry
  end

  def destroy
    set_printer
    @printer.destroy
    redirect_to printers_path
  end

  private

  def printer_params
    params.require(:printer).permit(:model, :price)
  end

  def set_printer
    @printer = Printer.find(params[:id])
  end
end
