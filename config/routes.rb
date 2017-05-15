Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'

  get 'home/writing'

  get 'home/reading'

  get 'home/querying'

  get 'home/using'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
