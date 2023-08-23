class HomeController < ApplicationController
  def cubed
    @my_number = params[:your_number]
    @cubed_num = (@my_number.to_i ** 3)
  end

  def evenly
    @the_number1 = params[:the_number1]
    @the_number2 = params[:the_number2]

    if @the_number1.to_i % @the_number2.to_i == 0
      @answer = "#{@the_number1} is evenly divisible by #{@the_number2}"
    else
      @answer = "#{@the_number1} is not evenly divisible by #{@the_number2}"
    end
  end

  def is_palindrome
    @word = params[:word]
    if @word.downcase == @word.downcase.reverse
      @result = "#{@word} is a palindrome"
    else
      @result = "#{@word} is not a palindrome"
    end
  end

  def madlib
    @noun = params[:noun]
    @verb = params[:verb]
    @adj = params[:adj]
    @adverb = params[:adverb]

    @display = "The #{@adj} #{@noun} decided to #{@verb} #{@adverb}."
  end
end
