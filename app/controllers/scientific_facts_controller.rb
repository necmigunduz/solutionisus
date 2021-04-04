class ScientificFactsController < ApplicationController
  before_action :set_scientific_fact, only: %i[ show edit update destroy ]

  # GET /scientific_facts or /scientific_facts.json
  def index
    @scientific_facts = ScientificFact.all
  end

  # GET /scientific_facts/1 or /scientific_facts/1.json
  def show
  end

  # GET /scientific_facts/new
  def new
    @scientific_fact = ScientificFact.new
  end

  # GET /scientific_facts/1/edit
  def edit
  end

  # POST /scientific_facts or /scientific_facts.json
  def create
    @scientific_fact = ScientificFact.new(scientific_fact_params)

    respond_to do |format|
      if @scientific_fact.save
        format.html { redirect_to @scientific_fact, notice: "Scientific fact was successfully created." }
        format.json { render :show, status: :created, location: @scientific_fact }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scientific_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scientific_facts/1 or /scientific_facts/1.json
  def update
    respond_to do |format|
      if @scientific_fact.update(scientific_fact_params)
        format.html { redirect_to @scientific_fact, notice: "Scientific fact was successfully updated." }
        format.json { render :show, status: :ok, location: @scientific_fact }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scientific_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scientific_facts/1 or /scientific_facts/1.json
  def destroy
    @scientific_fact.destroy
    respond_to do |format|
      format.html { redirect_to scientific_facts_url, notice: "Scientific fact was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scientific_fact
      @scientific_fact = ScientificFact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scientific_fact_params
      params.require(:scientific_fact).permit(:scientific_fact_title, :scienctific_fact_definition)
    end
end
