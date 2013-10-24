College::Application.routes.draw do

namespace :api do
  resources :books, :only => [:search] do
      get 'search', on: :collection
  end
end
  
end
