class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question_to_find = params[:question]
    if @question_to_find == "I'm going to work"
      @answer = 'Great!'
    elsif @question_to_find.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
