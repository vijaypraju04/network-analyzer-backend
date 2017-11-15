class Api::V1::LinksController < ApplicationController
  def index
    @links = Link.all
    render json: @links
  end

  def create
    @target = Target.create(target_params)
    render json: @target
  end

  def update
    @link = Link.find(params[:id])
    @link.update(link_params)
    if @link.save
      render json: @link
    else
      render json: {errors: @link.errors.full_messages}, status: 422
    end
  end

  private

 def target_params
   params.require(:link).permit(:user_id, :target_id, :kind)
 end

end
