Rails.application.routes.draw do
  get '/cubed/:your_number' => 'home#cubed'
  get '/evenly/:the_number1/:the_number2' => 'home#evenly'
  get '/is_palindrome/:word' => 'home#is_palindrome'
  get '/madlib/:adj/:noun/:verb/:adverb' => 'home#madlib'
end
