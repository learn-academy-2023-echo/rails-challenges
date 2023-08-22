Rails.application.routes.draw do
  get '/landing' => 'team#landing'
  root 'team#landing'
  get '/member_one' => 'team#member_one'
  get '/member_two' => 'team#member_two'
end
