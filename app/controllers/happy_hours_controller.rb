class HappyHoursController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @happy_hours = HappyHour.all
  end

  def new
    @happy_hour = HappyHour.new
  end

  def create
    @happy_hour = HappyHour.new(happy_hour_params)
    if @happy_hour.save
      flash[:notice] = "Thanks for adding #{@happy_hour.place.name}!"
      redirect_to @happy_hour.place
    else
      render new_happy_hour_path
    end
  end

  def show
    @happy_hour = HappyHour.find(params[:id])
  end

  def edit
    @happy_hour = HappyHour.find(params[:id])
  end

  def update
    @happy_hour = HappyHour.find(params[:id])
    if @happy_hour.update(happy_hour_params)
      flash[:notice] = "Thanks for the update to #{@happy_hour.place.name}!"
      redirect_to @happy_hour.place
    else
      flash[:notice] = 'Failed to Update'
      render edit_happy_hour_path(@happy_hour)
    end
  end

  def destroy
    @happy_hour = HappyHour.find(params[:id])
    @happy_hour.destroy
    flash[:notice] = "Happy Hour Deleted"
    redirect_to places_path
  end

private
  def happy_hour_params
    params.require(:happy_hour).permit(:place_id, :start_time, :end_time, :details)
  end
end
