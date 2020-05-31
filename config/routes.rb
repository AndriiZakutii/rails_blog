Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  get '/posts', to: 'posts#index', as: :posts #Show main page
  get '/posts/new', to: 'posts#new', as: :new_post #Page for create new post
  get '/posts/:id', to: 'posts#show', as: :post#Show single post by id on page
  post '/posts', to: 'posts#create' #Request to create post
  get '/posts/:id/edit', to: 'posts#edit', as: :edit_post #Show page for edit post
  patch '/posts/:id', to: 'posts#update' #Request to update existing post
  delete '/posts/:id', to: 'posts#delete' #Delete post
  get '/categories/:category_handle/posts', to: 'posts#index', as: :category_posts
  
  resources :posts do
    resources :comments
  end
end
