class QuestionsController < ApplicationController
  def answer
    #@answer = params[:query]
    @question = params[:query]
    @anwser = ask
  end

  def ask
    if @question.to_s.end_with?("?")
      return "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work right now!"
      return "Great!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
