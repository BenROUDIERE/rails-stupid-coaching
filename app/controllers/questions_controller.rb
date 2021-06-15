class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @answer = params[:answer]
    if @answer.downcase == "i am going to work right now!"
      @coach_answer = "Great!"
    elsif @answer.end_with?("?")
      @coach_answer = "Silly question, get dressed and go to work!"
    elsif @answer.upcase == @answer
      @coach_answer = "I can fell your motivation !"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end

end
