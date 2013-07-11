Moviez::Application.routes.draw do
  root :to => 'welcome#index', as: 'index'
  get '/movies' => 'movie#movies', as: 'movies_list'
  get '/movies/search' => 'movie#search', as: 'movie_search'
  post '/movies' => 'movie#create'
  get '/movies/new' => 'movie#new'
  get '/movies/:id' => 'movie#movie', as: 'single_movie'
  post '/movies/:id/save' => 'movie#save', as: 'save_movie'
  post '/movies/:id/edit' => 'movie#edit', as: 'edit_rating'
  get '/actors' => 'actor#index', as: 'actor_list'
end

