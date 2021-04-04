class SocialFactsController < ApplicationController
  before_action :set_social_fact, only: %i[ show edit update destroy ]

  # GET /social_facts or /social_facts.json
  def index
    @social_facts = SocialFact.all
  end

  # GET /social_facts/1 or /social_facts/1.json
  def show
  end

  # GET /social_facts/new
  def new
    @social_fact = SocialFact.new
  end

  # GET /social_facts/1/edit
  def edit
  end

  # POST /social_facts or /social_facts.json
  def create
    @social_fact = SocialFact.new(social_fact_params)

    respond_to do |format|
      if @social_fact.save
        format.html { redirect_to @social_fact, notice: "Social fact was successfully created." }
        format.json { render :show, status: :created, location: @social_fact }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @social_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_facts/1 or /social_facts/1.json
  def update
    respond_to do |format|
      if @social_fact.update(social_fact_params)
        format.html { redirect_to @social_fact, notice: "Social fact was successfully updated." }
        format.json { render :show, status: :ok, location: @social_fact }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @social_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_facts/1 or /social_facts/1.json
  def destroy
    @social_fact.destroy
    respond_to do |format|
      format.html { redirect_to social_facts_url, notice: "Social fact was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_fact
      @social_fact = SocialFact.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def social_fact_params
      params.require(:social_fact).permit(:social_fact_title, :social_fact_definition)
    end
end
