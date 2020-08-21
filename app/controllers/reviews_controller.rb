class ReviewsController < ApplicationController
  before_action :authenticate_user!
  # skip_after_action :verify_authorized

  def new
    @printer = Printer.find(params[:printer_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(booking_params)
    @review.printer = Printer.find(params[:printer_id])
    @review.user = current_user
    @review.name = current_user.name

    authorize @review
    if @review.save
      redirect_to printer_path(@review.printer)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:review).permit(:name, :text)
  end
end
