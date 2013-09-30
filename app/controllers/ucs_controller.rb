class UcsController < ApplicationController
  before_action :set_uc, only: [:show, :edit, :update, :destroy, :results]

  # GET /ucs
  # GET /ucs.json
  def index
    @ucs = Uc.all
  end

  # GET /ucs/1
  # GET /ucs/1.json
  def show
  end

  # GET /ucs/new
  def new
    @uc = Uc.new
  end

  # GET /ucs/1/edit
  def edit
  end

  # POST /ucs
  # POST /ucs.json
  def create
    @uc = Uc.new(uc_params)

    respond_to do |format|
      if @uc.save
        format.html { redirect_to @uc, notice: 'Uc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @uc }
      else
        format.html { render action: 'new' }
        format.json { render json: @uc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ucs/1
  # PATCH/PUT /ucs/1.json
  def update
    respond_to do |format|
      if @uc.update(uc_params)
        format.html { redirect_to @uc, notice: 'Uc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @uc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ucs/1
  # DELETE /ucs/1.json
  def destroy
    @uc.destroy
    respond_to do |format|
      format.html { redirect_to ucs_url }
      format.json { head :no_content }
    end
  end
  def results
    @candidates = @uc.candidates
    
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uc
      @uc = Uc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uc_params
      params.require(:uc).permit(:name)
    end
end
