class MovieController < ApplicationController

  def index
    @movies = Movie.all
  end

  def movies
    @movies = Movie.all
  end

  def search
    @search_results = Imdb::Search.new(params[:title])
    #binding.pry
  end

  def create
    movie = Imdb::Search.new(params[:title])
    movie.title = params[:title]
    movie.year = params[:year]
    movie.plot = params[:plot]
    movie.mpaa_rating = params[:mpaa_rating]
    movie.user_rating = params[:user_rating]
  end

  def new
  end

end