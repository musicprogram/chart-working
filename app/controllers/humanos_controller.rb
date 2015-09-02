class HumanosController < ApplicationController
  before_action :set_humano, only: [:show, :edit, :update, :destroy]

  # GET /humanos
  # GET /humanos.json
  def index
    @humanos = Humano.all
  end
  
  # GET /humanos/1
  # GET /humanos/1.json
  def show
  end

  # GET /humanos/new
  def new
    @humano = Humano.new
  end

  # GET /humanos/1/edit
  def edit
  end

  # POST /humanos
  # POST /humanos.json
  def create
    @humano = Humano.new(humano_params)

    respond_to do |format|
      if @humano.save
        format.html { redirect_to @humano, notice: 'Humano was successfully created.' }
        format.json { render :show, status: :created, location: @humano }
      else
        format.html { render :new }
        format.json { render json: @humano.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /humanos/1
  # PATCH/PUT /humanos/1.json
  def update
    respond_to do |format|
      if @humano.update(humano_params)
        format.html { redirect_to @humano, notice: 'Humano was successfully updated.' }
        format.json { render :show, status: :ok, location: @humano }
      else
        format.html { render :edit }
        format.json { render json: @humano.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /humanos/1
  # DELETE /humanos/1.json
  def destroy
    @humano.destroy
    respond_to do |format|
      format.html { redirect_to humanos_url, notice: 'Humano was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_humano
      @humano = Humano.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def humano_params
      params.require(:humano).permit(:mujer, :hombre)
    end
end
