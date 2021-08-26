Rails.application.routes.draw do
  get 'stores/index'
  get 'stores/show'
  get 'stores/new'
  get 'items/index'
  get 'items/show'
  get 'items/new'
  get 'departments/index'
  get 'departments/show'
  get 'departments/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
