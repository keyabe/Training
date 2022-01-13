class PrsController < ApplicationController
  before_action :set_pr, only: %i[ show edit update destroy ]

  # GET /prs or /prs.json
  def index
    @prs = Pr.all
  end

  # GET /prs/1 or /prs/1.json
  def show
  end

  # GET /prs/new
  def new
    @pr = Pr.new
  end

  # GET /prs/1/edit
  def edit
  end

  # POST /prs or /prs.json
  def create
    @pr = Pr.new(pr_params)

    respond_to do |format|
      if @pr.save
        format.html { redirect_to pr_url(@pr), notice: "Pr was successfully created." }
        format.json { render :show, status: :created, location: @pr }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prs/1 or /prs/1.json
  def update
    respond_to do |format|
      if @pr.update(pr_params)
        format.html { redirect_to pr_url(@pr), notice: "Pr was successfully updated." }
        format.json { render :show, status: :ok, location: @pr }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prs/1 or /prs/1.json
  def destroy
    @pr.destroy

    respond_to do |format|
      format.html { redirect_to prs_url, notice: "Pr was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pr
      @pr = Pr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pr_params
      params.require(:pr).permit(:title)
    end
end
