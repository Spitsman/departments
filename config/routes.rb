Rails.application.routes.draw do
  root to: 'employees#index'

  resources :employees
  resources :departments, except: :destroy do
    get :new_name
    post :update_name
    get :new_parent
    post :update_parent
  end
  resources :reports, only: :index do
    get :employees, on: :collection
  end
  resources :employments
end
