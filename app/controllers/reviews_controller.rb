class ReviewsController < ApplicationController
  before_action :set_review, only: [:update, :destroy]
  before_action :set_movie, only: [:create]

  def create
    @review = Review.new(review_param)
    @review.movie = @movie
    @reviews = Review.all
    if @review.save
      redirect_to movie_path(@movie)
    else
      render 'movies/show'
    end    
  end

  def update

    if @review.update(review_param)
      redirect_to movie_path(@review.movie)
    else
      render 'movies/show'
    end
  end

  def destroy
    @review.destroy
    redirect_to movie_path(@review.movie)
  end

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_param
    params.require(:review).permit(:author, :description, :stars)
  end
end
