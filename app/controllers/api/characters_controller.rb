class Api::CharactersController < ApplicationController
  def index
    # render json: "message: Chaotic Evil is bad"
    @characters = Character.all
    render "index.json.jb"
  end

  def show
    @character = Character.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @character = Character.new(
                           name: params[:name],
                           price: params[:price],
                           description: params[:description],
                           image_url: params[:image_url]
                          )

    if @character.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @character.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @character = Character.find(params[:id])

    @character.name = params[:name] || @character.name
    @character.price = params[:price] || @character.price
    @character.description = params[:description] || @character.description
    @character.image_url = params[:image_url] || @character.image_url

    if @character.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @character.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    character = Character.find(params[:id])
    character.destroy
    render json: {message: "Successfully Destroyed Product"}
  end
end
