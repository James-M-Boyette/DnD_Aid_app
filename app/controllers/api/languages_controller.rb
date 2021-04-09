class Api::LanguagesController < ApplicationController
  def index
    # render json: "message: Chaotic Evil is bad"
    @languages = Language.all
    render "index.json.jb"
  end

  def show
    @language = Language.find_by(id: params[:id])
    render "show.json.jb"
  end
end
