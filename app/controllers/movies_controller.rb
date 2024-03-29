class MoviesController < ApplicationController
  def index
 	# @movie = Movie.all
 	@movie =Movie.search_for(params[:q])
  end

  def show
  	@movie = Movie.find(params[:id])
  end

  def new 
  	@movie = Movie.new

  	def create
  		@movie = Movie.new(movie_params)
  		if @movie.save
  			redirect_to @movie
  		else
  			render 'new'
  		end
  	end

  def edit
  	@movie = Movie.find(params[:id])
  end

  def update
  	@movie = Movie.find(params[:id])
  	@movie.update movie_params
  	redirect_to @movie 
  end

# private
	def movie_params
		params.require('movie').permit(:title, :description, :year_released)
	end 
end
end
