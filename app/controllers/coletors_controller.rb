class ColetorsController < ApplicationController
  before_action :set_coletor, only: [:show, :edit, :update, :destroy]

  # GET /coletors
  # GET /coletors.json
  def index
    @coletors = Coletor.all
  end

  # GET /coletors/1
  # GET /coletors/1.json
  def show
  end

  # GET /coletors/new
  def new
    @coletor = Coletor.new
  end

  # GET /coletors/1/edit
  def edit
  end

  # POST /coletors
  # POST /coletors.json
  def create
    @coletor = Coletor.new(coletor_params)

    respond_to do |format|
      if @coletor.save
        format.html { redirect_to @coletor, notice: 'Coletor was successfully created.' }
        format.json { render :show, status: :created, location: @coletor }
      else
        format.html { render :new }
        format.json { render json: @coletor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coletors/1
  # PATCH/PUT /coletors/1.json
  def update
    respond_to do |format|
      if @coletor.update(coletor_params)
        format.html { redirect_to @coletor, notice: 'Coletor was successfully updated.' }
        format.json { render :show, status: :ok, location: @coletor }
      else
        format.html { render :edit }
        format.json { render json: @coletor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coletors/1
  # DELETE /coletors/1.json
  def destroy
    @coletor.destroy
    respond_to do |format|
      format.html { redirect_to coletors_url, notice: 'Coletor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coletor
      @coletor = Coletor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coletor_params
      params.require(:coletor).permit(:nome, :endereco, :cpf)
    end
end
