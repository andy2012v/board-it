class ExercisesController < ApplicationController

  def show
    @exercise = Exercise.find(params[:id])
    @language = Language.find(@exercise.language_id)
  end
end
