class QuestionsController < ApplicationController
  before_action :set_question, only: [:answer]

  def answer
    answer = @question.answer
    render text: answer
  end

  private
  def set_question
    @question =  Question.new(params[:id])
  end
end
