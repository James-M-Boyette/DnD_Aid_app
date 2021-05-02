class Api::EquipmentsController < ApplicationController
  def index
    # render json: "message: Chaotic Evil is bad"
    @equipments = Equipment.all
    render "index.json.jb"
  end

  def show
    @equipment = Equipment.find_by(id: params[:id])
    render "show.json.jb"
  end
end
