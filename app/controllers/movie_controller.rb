class MovieController < ApplicationController

  def index
    @movies = Movie.all
  end

  def movies
    @movies = Movie.all
  end

  def edit
    @movies = Movie.all
    movie = Movie.find(params[:id])
    case params[:user_rating]
      when "+1"
        movie.user_rating += 1
        movie.save
      when "-1"
        movie.user_rating -= 1
        movie.save
      when "favorite"
        movie.user_rating = 100
        movie.save
    end

    render "movies"
  end

  def search
    if params[:title]
      @search_results = Imdb::Search.new(params[:title])
    end
  end

  def movie
    @movie = Imdb::Movie.new(params[:id])
  end

  def save
    @movie = Imdb::Movie.new(params[:id])
    saved_movie = Movie.new
    saved_movie.title = @movie.title
    saved_movie.year = @movie.year
    saved_movie.plot = @movie.plot
    saved_movie.mpaa_rating = @movie.mpaa_rating
    saved_movie.save
    redirect_to '/movies'
  end

  def new
  end

end