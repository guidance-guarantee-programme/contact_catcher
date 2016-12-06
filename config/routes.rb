Rails.application.routes.draw do
  mount GovukAdminTemplate::Engine, at: '/style-guide'

  resources :contacts, only: %i(new create)

  root 'contacts#new'
end
