class QuestionsController < ApplicationController

  def index
  end

  def create
    @question =Question.new(questions_params)
    if @question.save
      redirect_to root_path
    else
      render :index
    end
  end



  private

  def questions_params
    params.permit(:q_email, :q_call_number, :q_reason, :q_text)
  end

end
