class Api::AlignmentsController < ApplicationController
  def index
    # render json: "message: Chaotic Evil is bad"
    @alignments = Alignment.all
    render "index.json.jb"
  end

  def show
    @alignment = Alignment.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @alignment = Alignment.new(
      name: params[:name],
      abbreviation: params[:abbreviation],
      desc: params[:desc],
      url: params[:url],
      # image_url: params[:image_url],
    )

    if @alignment.save
      render "create.json.jb"
    else
      render json: { errors: @alignment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @alignment = Alignment.find(params[:id])

    @alignment.name = params[:name] || @alignment.name
    @alignment.abbreviation = params[:abbreviation] || @alignment.abbreviation
    @alignment.desc = params[:desc] || @alignment.desc
    @alignment.url = params[:url] || @alignment.url
    # @alignment.image_url = params[:image_url] || @alignment.image_url

    if @alignment.save
      render "show.json.jb"
    else
      render json: { errors: @alignment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def delete
    alignment = Alignment.find(params[:id])
    alignment.destroy
    render json: { message: "Successfully Destroyed Alignment" }
  end
end
