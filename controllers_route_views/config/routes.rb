Rails.application.routes.draw do
 get '/landing' => 'home#landing'
 root 'home#landing'

 get '/raquel_page' => 'home#raquel_page'
 get '/bao_page' => 'home#bao_page'
end
