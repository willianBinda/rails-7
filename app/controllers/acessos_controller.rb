class AcessosController < ApplicationController
  before_action :authenticate_user!
  # load_and_authorize_resource
  before_action :set_acesso, only: %i[ show edit update destroy ]

  # GET /acessos or /acessos.json
  def index
    @acessos = Acesso.all
  end

  # GET /acessos/1 or /acessos/1.json
  def show
  end

  # GET /acessos/new
  def new
    @acesso = Acesso.new
  end

  # GET /acessos/1/edit
  def edit
  end

  # POST /acessos or /acessos.json
  def create
    @acesso = Acesso.new(acesso_params)

    respond_to do |format|
      if @acesso.save
        format.html { redirect_to acesso_url(@acesso), notice: "Acesso was successfully created." }
        format.json { render :show, status: :created, location: @acesso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @acesso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acessos/1 or /acessos/1.json
  def update
    respond_to do |format|
      if @acesso.update(acesso_params)
        format.html { redirect_to acesso_url(@acesso), notice: "Acesso was successfully updated." }
        format.json { render :show, status: :ok, location: @acesso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @acesso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acessos/1 or /acessos/1.json
  def destroy
    @acesso.destroy!

    respond_to do |format|
      format.html { redirect_to acessos_url, notice: "Acesso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acesso
      @acesso = Acesso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def acesso_params
      params.require(:acesso).permit(:nivel)
    end
end
