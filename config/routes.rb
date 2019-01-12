Rails.application.routes.draw do
  root :to => redirect('question1/answer')

  namespace :api, { format: 'json' } do
    resources :event_logs, only: [:create]
  end

  resources :questions, only: [:show], path: '', constraints: {id: /question(\d+)/}do
    member do
      get 'answer'
    end
  end
end
