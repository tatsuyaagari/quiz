class QuizzesController < ApplicationController
  def index
    @quizzes = ImageQuiz.all
  end
end