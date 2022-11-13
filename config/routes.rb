Rails.application.routes.draw do
  resources :books

  get 'books'=>'books#index'
  get 'books/:id'=>'books#show'
  get 'books/:id/edit'=>'books#edit'
  get root :to =>'homes#top'
  post 'books/:id'=>'books#update'
  delete 'books'=>'books#destroy', as:'destroy_book'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
