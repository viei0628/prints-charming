class PrintersController < ApplicationController
  def index
    @printers = Printer.all
  end
end
