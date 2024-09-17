class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @usersinput = params[:question]
    if params[:question].end_with?("?")
      @answer = "Silly question!"
    elsif params[:question] == "I am going to work"
      @answer = "Great!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
