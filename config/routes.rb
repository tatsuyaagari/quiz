Rails.application.routes.draw do
  root to: 'toppages#index'
 
  # root to: 'quizzes#index'

  get 'categories', to: 'categories#index'
  get 'quizzes', to: 'quizzes#index'
  # get 'questions', to: 'questions#index'
  resources :questions do
    collection do
      get :animal
      get :food
      get :vehicle
    end
    resources :answers
  end
end