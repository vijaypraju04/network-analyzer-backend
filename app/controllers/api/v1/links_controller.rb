class Api::V1::LinksController < ApplicationController
  def index
    @links = Link.all
    render json: @links
  end

  def show
  @link = Link.find(params[:id])
    respond_to do |format|
    format.html { render :show }
    format.json { render json: @link }
    end
  end

  def create
    byebug
    @link = Link.create(link_params)
    render json: @link
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

 def link_params
   params.require(:link).permit(:user_id, :target_id, :kind)
 end

end
