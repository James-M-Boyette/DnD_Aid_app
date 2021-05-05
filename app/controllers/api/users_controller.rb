class Api::UsersController < ApplicationController
  # include :Current_User
  # include UserHelper
  # include Current_User

  def index
    # render json: "message: People are signing up!"
    # user = current_user
    # p user
    # admin = User.userid
    # p admin
    if current_user && admin == "a0001"
      @users = User.all
      render "index.json.jb"
    else
      p current_user
      @users = []
      render json: { message: "Access Denied (UIndex)" }
    end
  end

  def show
    if current_user
      @user = current_user
      render "show.json.jb"
    else
      @user = []
      render json: { message: "Access Denied (UShow)" }
    end
  end

  # def show
  #   @user = User.find_by(id: params[:id])
  #   render "show.json.jb"
  # end

  def create
    # password -> what user types in
    # password_digest, after hashing, saved in db
    @user = User.new(
      # username: params[:username],
      email: params[:email],
      ufirstname: params[:ufirstname],
      ulastname: params[:ulastname],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if @user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    if current_user
      @user = current_user
      @user.user_id = params[:id] || @user.id
      @user.email = params[:email] || @user.email
      @user.ufirstname = params[:ufirstname] || @user.ufirstname
      @user.ulastname = params[:ulastname] || @user.ulastname
      @user.password = params[:password] || @user.password
      # @user.characterid = params[:characterid] || @user.characterid

      if @user.save
        render "show.json.jb"
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { message: "Access Denied (UUpdate)" }
    end
  end

  def destroy
    if current_user
      user = current_user
      user.destroy
      render json: { message: "Successfully Deleted the User Profile from the Database" }
    else
      render json: { message: "Access Denied (UDestroy)" }
    end
  end
end
