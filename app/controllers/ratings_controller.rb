class RatingsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @ratings = Rating.all
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    if @rating.save
      flash[:notice] = "Thanks for adding #{@rating.place.name}!"
      redirect_to @rating
    else
      render new_rating_path
    end
  end

  def show
    @rating = Rating.find(params[:id])
  end

  def edit
    @rating = Rating.find(params[:id])
  end

  def update
    @rating = Rating.find(params[:id])
    if @rating.update(rating_params)
      flash[:notice] = "Thanks for the update to #{@rating.place.name}!"
      redirect_to rating_path(@rating)
    else
      flash[:notice] = 'Failed to Update'
      render edit_rating_path(@rating)
    end
  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
    flash[:notice] = "Rating Deleted"
    redirect_to ratings_path
  end

private
  def rating_params
    params.require(:rating).permit(:place_id, :review, :score)
  end
end
