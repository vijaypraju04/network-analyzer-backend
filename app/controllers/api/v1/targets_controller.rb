class Api::V1::TargetsController < ApplicationController
  def index
    @targets = Target.all
    render json: @targets
  end

  # def show
  # @target = Target.find(params[:id])
  #   respond_to do |format|
  #   format.html { render :show }
  #   format.json { render json: @target }
  #   end
  # end

  # def create
  #   @target = Target.create(target_params)
  #   @target.save
  #   redirect_to target_path(@target)
  # end

  def update
    @target = Target.find(params[:id])
    @target.update(target_params)
    if @target.save
      render json: @target
    else
      render json: {errors: @target.errors.full_messages}, status: 422
    end
  end

  private

 def target_params
   params.require(:target).permit(:name, :category)
 end
end
