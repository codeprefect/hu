class AnswersController < ApplicationController

  def create
    question = Question.find(params[:answer][:question_id])
    Answer.create(answer_params)
    session[:current_user_email] = answer_params[:email]
    redirect_to question
  end

  private

  def answer_params
    params.require(:answer).permit(:question_id, :email, :body)
  end

end
