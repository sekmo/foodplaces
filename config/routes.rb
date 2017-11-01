Rails.application.routes.draw do
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/new'
  get 'restaurants/edit'
  root 'restaurants#index'
end
