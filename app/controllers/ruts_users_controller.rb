class RutsUsersController < ApplicationController
  before_action :set_ruts_user, only: [:show, :update, :destroy]

  # GET /ruts_users
  def index
    @ruts_users = RutsUser.all
    
    render json: @ruts_users
  end

  # GET /ruts_users/1
  def show
    render json: @ruts_user
  end

  # POST /ruts_users
  def create
    @ruts_user = RutsUser.new(ruts_user_params)

    if @ruts_user.save
      render json: @ruts_user, status: :created, location: @ruts_user
    else
      render json: @ruts_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ruts_users/1
  def update
    if @ruts_user.update(ruts_user_params)
      render json: @ruts_user
    else
      render json: @ruts_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ruts_users/1
  def destroy
    @ruts_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ruts_user
      @ruts_user = RutsUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ruts_user_params
      params.require(:ruts_user).permit(:user_id, :rut_id)
    end
end
