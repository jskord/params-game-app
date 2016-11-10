class GamesController < ApplicationController

  def name_in_caps_method
    @name = params["my_name"]
    @message="your name starts with the first letter of the alphabet!"
    render 'name_in_caps.html.erb'
  end

  def guess_a_number
    @number=rand(1..100)
    @guess = params["number"].to_i
    if @guess > @number
      @message="you guessed too high"
    else
      @message="you guessed too low"
    end
    render 'guess_a_number.html.erb'
  end

  def segment_params_method
    @number=rand(1..100)
    @guess = params["variable"].to_i
    if @guess > @number
      @message="you guessed too high"
    else
      @message="you guessed too low"
    end
    render 'guess_a_number_segment_params.html.erb'
  end

  def form_method
    render 'form.html.erb'
  end

  def form_result_method
    @number=rand(1..100)
    @guess = params["form_message"].to_i
    if @guess > @number
      @message="you guessed too high"
    else
      @message="you guessed too low"
    end
    render 'form_result.html.erb'
  end

end
