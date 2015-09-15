class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order('created_at DESC')
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = 'Question added.'
      redirect_to '/'
    else
      render :new
    end
  end
  private
  def question_params
    params.require(:question).permit(:title, :description)
  end
end
