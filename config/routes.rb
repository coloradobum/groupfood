Groupfood2::Application.routes.draw do

	root "trips#index"
  resources :expenses

  resources :members

  resources :trips

end
