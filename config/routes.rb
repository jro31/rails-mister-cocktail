Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# # Cocktails
# #   Create
#     # New
#     get 'cocktails/new', to: 'cocktails#new', as: 'new_cocktail'
#     # Create
#     post 'cocktails', to: 'cocktails#create'

#   # Read
#     # Index
#     get 'cocktails', to: 'cocktails#index'
#     # Show
#     get 'cocktails/:id', to: 'cocktails#show', as: 'cocktail'

#   # Update
#     # Edit
#     get 'cocktails/:id/edit', to: 'cocktails#edit', as: 'edit_cocktail'
#     # Update
#     patch 'cocktails/:id', to: 'cocktails#update'

#   # Destroy
#     delete 'cocktails/:id', to: 'cocktails#destroy', as: 'delete_cocktail'

# # Doses
#   # New
#     get 'cocktails/:cocktail_id/doses/new', to: 'doses#new'
#   # Create
#     post 'cocktails/:cocktail_id/doses', to: 'doses#create'

#   # Destroy
#     delete 'cocktails/:id/doses/:id', to: 'doses#destroy'

  resources :cocktails do
     resources :doses, only: [ :new, :create, :destroy ]
  end
end
