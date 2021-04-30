class Api::AlignmentsController < ApplicationController
  def index
    # render json: "message: Chaotic Evil is bad"
    @alignments = Alignment.all
    render "index.json.jb"
  end

  def create
    @alignment = Alignment.new(
      name: params[:name],
      abbreviation: params[:abbreviation],
      desc: params[:desc],
      imgurl: params[:imgurl],
    )

    if @alignment.save
      render "show.json.jb"
    else
      render json: { errors: @alignment.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  def show
    @alignment = Alignment.find_by(id: params[:id])
    render "show.json.jb"
  end
  # MAKE SURE TO NOT PUT COMMAS FOR THE UPDATE ... IT'S NOT AN OBJECT n BECAUSE "REASONS" VARIABLES CREATED OUTSIDE OF OBJECTS DON'T NEED THIS SEPERATION ... IS THIS RUBY-SPECIFIC???
  def update
    @alignment = Alignment.find(params[:id])
    @alignment.name = params[:name] || @alignment.name
    @alignment.abbreviation = params[:abbreviation] || @alignment.abbreviation
    @alignment.desc = params[:desc] || @alignment.desc
    @alignment.imgurl = params[:imgurl] || @alignment.imgurl

    if @alignment.save
      render "show.json.jb"
    else
      render json: { errors: @alignment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    alignment = Alignment.find(params[:id])
    alignment.destroy
    render json: { message: "Successfully Destroyed Product" }
  end
end
