Rails.application.routes.draw do
  get root'welcome#index'
  resources "entries"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
