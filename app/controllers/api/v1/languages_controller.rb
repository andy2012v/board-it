class Api::V1::LanguagesController < ApplicationController
  
  def show
    langauages = Language.find(params[:id]).reviews
    render json: languages, adapter: :json
  end

end
