class ExercisesController < ApplicationController

  def show
    @exercise = Exercise.find(params[:id])
    @language = Language.find(@exercise.language_id)
    puts "exercise id is #{params[:id]}"
  end

end
