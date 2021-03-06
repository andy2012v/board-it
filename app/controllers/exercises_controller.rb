class ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end

  def index
    @exercises = Exercise.all
    @languages = Language.all
  end

  def show
    @exercise = Exercise.find(params[:id])
    @language = Language.find(@exercise.language_id)
  end

  def create
    @exercise = Exercise.new(exercise_params)

    if @exercise.save
      flash[:notice] = 'Exercise Added Successfully'
      redirect_to '/'
    else
      flash[:alert] = "error!"
      render :new
    end
  end


  private

  def exercise_params
    params.require(:exercise).permit(:difficulty, :description, :solution, :date, :tips, :language_id, :user_id)
  end

end
