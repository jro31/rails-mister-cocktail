Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# Cocktails
  # Create
    # New
    get 'cocktails/new', to: 'cocktails#new', as: 'new_cocktail'
    # Create
    post 'cocktails', to: 'cocktails#create'

  # Read
    # Index
    get 'cocktails', to: 'cocktails#index'
    # Show
    get 'cocktails/:id', to: 'cocktails#show', as: 'cocktail'

  # Update
    # Edit
    get 'cocktails/:id/edit', to: 'cocktails#edit'
    # Update
    patch 'cocktails/:id', to: 'cocktails#update'

  # Destroy
    delete 'cocktails/:id', to: 'cocktails#destroy', as: 'delete_cocktail'

# Doses
  # Index
    get 'cocktails/:id/doses', to: 'doses#index', as: 'doses'

  # Destroy
    delete 'cocktails/:id/doses/:id', to: 'doses#destroy'
end
