class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
  @target = Target.find(params[:id])
    respond_to do |format|
    format.html { render :show }
    format.json { render json: @target }
    end
  end

  def create
    @target = Target.create(target_params)
    render json: @target
  end

  def update
    @user = User.find(params[:id])

    @user.update(note_params)
    if @user.save
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}, status: 422
    end
  end

  private

 def user_params
   params.require(:user).permit(:name, :bio, :photo, :contact)
 end
end
