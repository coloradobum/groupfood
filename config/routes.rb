Gftest::Application.routes.draw do

  root 'trips#index'
  resources :expenses

  resources :members

  resources :trips

  get 'expenses/:id/new' => 'expenses#new_by_id'

  get 'members/:id/new' => 'members#new_by_id'

end
