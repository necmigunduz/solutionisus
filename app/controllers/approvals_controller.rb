class ApprovalsController < ApplicationController
  before_action :set_approval, only: %i[ show edit update destroy ]

  # GET /approvals or /approvals.json
  def index
    @approvals = Approval.all
  end

  # GET /approvals/1 or /approvals/1.json
  def show
  end

  # GET /approvals/new
  def new
    @approval = Approval.new
  end

  # GET /approvals/1/edit
  def edit
  end

  # POST /approvals or /approvals.json
  def create
    @approval = Approval.new(approval_params)

    respond_to do |format|
      if @approval.save
        format.html { redirect_to @approval, notice: "Approval was successfully created." }
        format.json { render :show, status: :created, location: @approval }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @approval.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /approvals/1 or /approvals/1.json
  def update
    respond_to do |format|
      if @approval.update(approval_params)
        format.html { redirect_to @approval, notice: "Approval was successfully updated." }
        format.json { render :show, status: :ok, location: @approval }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @approval.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /approvals/1 or /approvals/1.json
  def destroy
    @approval.destroy
    respond_to do |format|
      format.html { redirect_to approvals_url, notice: "Approval was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_approval
      @approval = Approval.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def approval_params
      params.require(:approval).permit(:user_id, :solution_suggestion_id)
    end
end
