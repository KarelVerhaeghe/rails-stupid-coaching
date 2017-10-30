class QuestionsController < ApplicationController
  def answer
    @question = params[:question]
    shout = ""
    shout = "I can feel your motivation! " if @question == @question.upcase
    shout = "" if @question.capitalize == "I am going to work right now!"
    message = @question.capitalize
    string = "I don't care, get dressed and go to work!"
    if message == "I am going to work right now!" || @question == @question.upcase
      string = ""
    elsif message.end_with?("?")
      string = "Silly question, get dressed and go to work!"
    end
    @answer = shout + string
  end

  def ask

  end
end
