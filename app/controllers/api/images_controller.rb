class ImagesController < ApplicationController
  def index
    # render json: "message: Images are bad"
    # @images = Image.all
    # render "index.json.jb"
  end

  def show
    # @image = Image.find_by(id: params[:id])
    # render "show.json.jb"
  end

  def create
    # @image = Image.new(
    #   image_id: params[:image_id],
    #   image_name: params[:image_name],
    #   image_path: params[:image_path],
    #   image_size: params[:image_size],
    #   image_obj: params[:image_obj],
    # )

    # if @image.save
    #   render "show.json.jb"
    # else
    #   render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    # end
  end

  def update
    # @image = Image.find(params[:id])
    # @image.image_id = params[:image_id] || @image.image_id
    # @image.image_name = params[:image_name] || @image.image_name
    # @image.image_path = params[:image_path] || @image.image_path
    # @image.image_size = params[:image_size] || @image.image_size
    # @image.image_obj = params[:image_obj] || @image.image_obj

    # if @image.save
    #   render "show.json.jb"
    # else
    #   render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    # end
  end

  def destroy
    # image = Image.find(params[:id])
    # image.destroy
    # render json: { message: "Successfully Destroyed the image" }
  end
end
