INPUT_WORK = 'I am going to work right now!'
ANSWER_WORK = 'Great!'
ANSWER_QUESTION = 'Silly question, get dressed and go to work!'
ANSWER_OTHER = "I don't care, get dressed and go to work!"

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @search = params[:question]
    @answer = stupid_coach(@search)
  end

  def stupid_coach(search)
    if search == INPUT_WORK
      ANSWER_WORK
    elsif search.end_with?('?')
      ANSWER_QUESTION
    else
      ANSWER_OTHER
    end
  end
end
