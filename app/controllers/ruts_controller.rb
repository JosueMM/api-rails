class RutsController < ApplicationController
  before_action :set_rut, only: [:show, :update, :destroy]

  # GET /ruts
  def index
    @ruts = Rut.all

    render json: @ruts
  end

  # GET /ruts/1
  def show
    render json: @rut
  end

  # POST /ruts
  def create
    @rut = Rut.new(rut_params)

    if @rut.save
      render json: @rut, status: :created, location: @rut
    else
      render json: @rut.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ruts/1
  def update
    if @rut.update(rut_params)
      render json: @rut
    else
      render json: @rut.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ruts/1
  def destroy
    @rut.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rut
      @rut = Rut.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rut_params
      params.require(:rut).permit(:time, :start, :end, :date, :inte, :intefull, :status, :id_user)
    end
end
