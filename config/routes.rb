Moviez::Application.routes.draw do
  root :to => 'welcome#index', as: 'index'
  get '/movies' => 'movie#movies', as: 'movies_list'
  get '/movies/search' => 'movie#search', as: 'movie_search'
  post '/movies' => 'movie#create'
  get '/movies/new' => 'movie#new'
end

