Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
root 'main#team_members'
  # Defines the root path route ("/")
  # root "articles#index"
  get '/mike' => 'main#mike'
  get '/graham' => 'main#graham'
end
