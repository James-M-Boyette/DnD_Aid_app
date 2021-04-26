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
      userid: params[:userid],
      email: params[:email],
      ufirstname: params[:ufirstname],
      ulastname: params[:ulastname],
      # username: params[:username],
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
end
