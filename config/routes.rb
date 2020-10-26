Rails.application.routes.draw do
  resources :blogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'blogs/new' => 'blog#new', as: 'new_blog'
  delete 'blogs/:id' => 'blogs#destroy', as: 'delete_blog'

end
