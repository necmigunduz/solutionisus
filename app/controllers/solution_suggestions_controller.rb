class SolutionSuggestionsController < ApplicationController
  before_action :set_solution_suggestion, only: %i[ show edit update destroy ]

  # GET /solution_suggestions or /solution_suggestions.json
  def index
    @solution_suggestions = SolutionSuggestion.all
  end

  # GET /solution_suggestions/1 or /solution_suggestions/1.json
  def show
  end

  # GET /solution_suggestions/new
  def new
    @solution_suggestion = SolutionSuggestion.new
  end

  # GET /solution_suggestions/1/edit
  def edit
  end

  # POST /solution_suggestions or /solution_suggestions.json
  def create
    @solution_suggestion = SolutionSuggestion.new(solution_suggestion_params)

    respond_to do |format|
      if @solution_suggestion.save
        format.html { redirect_to @solution_suggestion, notice: "Solution suggestion was successfully created." }
        format.json { render :show, status: :created, location: @solution_suggestion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @solution_suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solution_suggestions/1 or /solution_suggestions/1.json
  def update
    respond_to do |format|
      if @solution_suggestion.update(solution_suggestion_params)
        format.html { redirect_to @solution_suggestion, notice: "Solution suggestion was successfully updated." }
        format.json { render :show, status: :ok, location: @solution_suggestion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @solution_suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solution_suggestions/1 or /solution_suggestions/1.json
  def destroy
    @solution_suggestion.destroy
    respond_to do |format|
      format.html { redirect_to solution_suggestions_url, notice: "Solution suggestion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solution_suggestion
      @solution_suggestion = SolutionSuggestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def solution_suggestion_params
      params.require(:solution_suggestion).permit(:problem_id, :user_id)
    end
end
