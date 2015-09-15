require 'pry'

class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      flash[:notice] = 'Answer added.'
      redirect_to question_path(@question)
    else
      @question = Question.find(params[:question_id])
      flash[:notice] = 'failure'
      render 'questions/show'
    end
  end

  private
  def answer_params
    params.require(:answer).permit(:body).merge(question_id: params[:question_id])
  end


end
