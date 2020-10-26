Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users, skip: [:registrations], controllers: { sessions: 'sessions' }

  devise_scope :users do
    devise_for :users, path: 'customers', class_name: 'User', only: %i[registrations], controllers: { registrations: 'customers/users' }
  end

  devise_scope :users do
    devise_for :users, path: 'admins', class_name: 'User', only: %i[registrations], controllers: { registrations: 'admins/users' }
  end
end
