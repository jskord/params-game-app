class GamesController < ApplicationController
  @@winning_number = rand(1..100)
  def init
    render 'index.html.erb'
  end

  def name_in_caps_method
    render 'name_in_caps.html.erb'
  end

  def form_result_name_method
    @name = params["form_message"]
    render 'form_name_game_result.html.erb'
  end

  def form_method
    render 'form.html.erb'
  end

  def form_result_method
    @guess = params["form_message"].to_i
    if @guess > @@winning_number
      @message="you guessed too high"
    elsif @guess < @@winning_number
      @message="you guessed too low"
    else
      @message="you win!"
      @@winning_number=rand(1..100)
    end
    render 'form_result.html.erb'
  end

end
