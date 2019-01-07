Rails.application.routes.draw do
  devise_for :users
  root 'home#Dash'

  get 'home/account', :as => 'home/account'
  get 'home/courses', :as => 'home/courses'
  get 'home/create_course', :as => 'home/create_course'
  get 'home/get_courses', :as => 'home/get_courses'

  get '/home/course/:id' => 'home#course', as: "course"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
