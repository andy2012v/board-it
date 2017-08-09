class LanguagesController < ApplicationController

  def show
    @language = Language.find(params[:id])
    @exercises = @language.exercises.where(date: DateTime.now.to_date)
  end
end
