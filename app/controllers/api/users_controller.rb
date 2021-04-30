class Api::UsersController < ApplicationController
  # include :Current_User
  include UserHelper
  # include Current_User

  def index
    # render json: "message: People are signing up!"
    @users = User.all
    render "index.json.jb"
  end

  def show
    current_user
    @user = @current_user
    # @user = User.find_by(id: params[:id])
    render "show.json.jb"
    # render json "wh?"
  end

  # def show
  #   @user = User.find_by(id: params[:id])
  #   render "show.json.jb"
  # end

  def create
    # password -> what user types in
    # password_digest, after hashing, saved in db

    @user = User.new(
      # May not need user ID
      # username: params[:username],

      userid: params[:userid],
      email: params[:email],
      ufirstname: params[:ufirstname],
      ulastname: params[:ulastname],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      characterid: params[:characterid],
    )
    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @user = current_user
    @user.userid = params[:userid] || @user.userid
    @user.email = params[:email] || @user.email
    @user.ufirstname = params[:ufirstname] || @user.ufirstname
    @user.ulastname = params[:ulastname] || @user.ulastname
    @user.password = params[:password] || @user.password
    @user.characterid = params[:characterid] || @user.characterid

    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    user = current_user
    user.destroy
    render json: { message: "Successfully Deleted the User Profile from the Database" }
  end
end
