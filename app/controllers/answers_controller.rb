class AnswersController < ApplicationController
  def create
    @quiz = ImageQuiz.find(params[:question_id])

    if @quiz.answer == params[:answer]
      # 正解の場合
      flash[:success] = 'せいかい！'
      redirect_to :back
    else
      # 不正解の場合
      flash[:danger] = 'まちがい！'
      flash[:quiz_id] = params[:quiz_id]
      redirect_to :back
    end
  end
end