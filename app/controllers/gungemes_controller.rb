class GungemesController < ApplicationController
  before_action :set_gungeme, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  # GET /gungemes
  # GET /gungemes.json
  def index
    @gungemes = Gungeme.all
  end

  # GET /gungemes/1
  # GET /gungemes/1.json
  def show
  end

  # GET /gungemes/new
  def new
    @gungeme = Gungeme.new
  end

  # GET /gungemes/1/edit
  def edit
  end

  # POST /gungemes
  # POST /gungemes.json
  def create
    @gungeme = Gungeme.new(gungeme_params)

    respond_to do |format|
      if @gungeme.save
        format.html { redirect_to @gungeme, notice: 'Gungeme was successfully created.' }
        format.json { render :show, status: :created, location: @gungeme }
      else
        format.html { render :new }
        format.json { render json: @gungeme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gungemes/1
  # PATCH/PUT /gungemes/1.json
  def update
    respond_to do |format|
      if @gungeme.update(gungeme_params)
        format.html { redirect_to @gungeme, notice: 'Gungeme was successfully updated.' }
        format.json { render :show, status: :ok, location: @gungeme }
      else
        format.html { render :edit }
        format.json { render json: @gungeme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gungemes/1
  # DELETE /gungemes/1.json
  def destroy
    @gungeme.destroy
    respond_to do |format|
      format.html { redirect_to gungemes_url, notice: 'Gungeme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gungeme
      @gungeme = Gungeme.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gungeme_params
      params.require(:gungeme).permit(:name, :machine, :purpose, :vc, :friendid, :comment)
    end
end
