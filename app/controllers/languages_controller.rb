class LanguagesController < ApplicationController

  def show
    @language = Language.find(params[:id])
    @exercises = @language.exercises
  end
end
