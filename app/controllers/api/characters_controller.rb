class Api::CharactersController < ApplicationController
  # skip_before_action :verify_authenticity_token
  # This was due to commenting-out the second line of application_controller o.O

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
      userid: params[:userid],
      cfirstname: params[:cfirstname],
      cmiddlename: params[:cmiddlename],
      clastname: params[:clastname],
      raceid: params[:raceid],
      classid: params[:classid],
      alignmentid: params[:alignmentid],
      languageid: params[:languageid],
      inventoryid: params[:inventoryid],
      strength: params[:strength],
      dexterity: params[:dexterity],
      constitution: params[:constitution],
      intelligence: params[:intelligence],
      wisdom: params[:wisdom],
      charisma: params[:charisma],
      healthmax: params[:healthmax],
      healthcurrent: params[:healthcurrent],
      healthtemp: params[:healthtemp],
      speed: params[:speed],
    )

    if @character.save
      render "show.json.jb"
    else
      render json: { errors: @character.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # MAKE SURE TO NOT PUT COMMAS FOR THE UPDATE ... IT'S NOT AN OBJECT n BECAUSE "REASONS" VARIABLES CREATED OUTSIDE OF OBJECTS DON'T NEED THIS SEPERATION ... IS THIS RUBY-SPECIFIC???
  def update
    @character = Character.find(params[:id])

    userid
    cfirstname
    cmiddlename
    clastname
    raceid
    classid
    alignmentid
    languageid
    inventoryid
    strength
    dexterity
    constitution
    intelligence
    wisdom
    charisma
    healthmax
    healthcurrent
    healthtemp
    speed
    @character.name = params[:name] || @character.name
    @character.price = params[:price] || @character.price
    @character.description = params[:description] || @character.description
    @character.image_url = params[:image_url] || @character.image_url

    if @character.save
      render "show.json.jbuilder"
    else
      render json: { errors: @character.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    character = Character.find(params[:id])
    character.destroy
    render json: { message: "Successfully Destroyed Product" }
  end
end
