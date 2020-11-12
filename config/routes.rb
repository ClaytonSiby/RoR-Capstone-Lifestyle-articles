# frozen_string_literal: true

Rails.application.routes.draw do
  get 'homepage/index'

  resources :sessions, only: %i[ destroy new create ]

  resources :users, only: %i[new create show]

  get 'sign_up', to: 'users#new', as: 'sign_up'

  get 'sign_in', to: 'sessions#new', as: 'sign_in'

  get 'sign_out', to: 'sessions#destroy', as: 'sign_out'

  resources :categories

  resources :articles, except: %i[ index ] do

    resources :votes, only: %i[create destroy]

  end

  root 'homepage#index'
end
