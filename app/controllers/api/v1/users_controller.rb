class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
  @user = User.find(params[:id])
    respond_to do |format|
    format.html { render :show }
    format.json { render json: @user }
    end
  end

  def create

    # Dog.new({name: 'whatever', size: 'medium'})
    # user_attributes = user_params.merge({target_attributes: params[:target]})
    @user = User.create(user_params)
    length = params[:target][:name].length

    length.times do |i|
      @target = Target.find_or_create_by(name: params[:target][:name][i].capitalize)
      @link = Link.create(user: @user, target: @target, kind: params[:link][:kind][i].capitalize)
    end

    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
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
