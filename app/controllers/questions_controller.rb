class QuestionsController < ApplicationController

  def show
    @quiz = ImageQuiz.find(params[:id])
    render :index
  end

  def index
    @quiz = ImageQuiz.all.sample
  end

  def animal
    @quiz = ImageQuiz.where(category_id: 1).sample
    set_quiz_with_flash
    render :index
  end

  def food
    @quiz = ImageQuiz.where(category_id: 2).sample
    set_quiz_with_flash
    render :index
  end

  def vehicle
    @quiz = ImageQuiz.where(category_id: 3).sample
    set_quiz_with_flash
    render :index
  end

  private

  def set_quiz_with_flash
    if flash[:quiz_id].present?
      @quiz = ImageQuiz.find(flash[:quiz_id])
      flash[:quiz_id] = nil
    end
  end

end