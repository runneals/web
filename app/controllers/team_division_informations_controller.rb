class TeamDivisionInformationsController < ApplicationController
  skip_before_action :require_login, only: [:show, :index]
  before_action :set_team_division_information, only: [:show, :edit, :update, :destroy]

  # GET /team_division_informations
  # GET /team_division_informations.json
  def index
    @team_division_informations = TeamDivisionInformation.all
  end

  # GET /team_division_informations/1
  # GET /team_division_informations/1.json
  def show
  end

  # GET /team_division_informations/new
  def new
    @team_division_information = TeamDivisionInformation.new
  end

  # GET /team_division_informations/1/edit
  def edit
  end

  # POST /team_division_informations
  # POST /team_division_informations.json
  def create
    @team_division_information = TeamDivisionInformation.new(team_division_information_params)

    respond_to do |format|
      if @team_division_information.save
        format.html { redirect_to @team_division_information, notice: 'Team division information was successfully created.' }
        format.json { render :show, status: :created, location: @team_division_information }
      else
        format.html { render :new }
        format.json { render json: @team_division_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_division_informations/1
  # PATCH/PUT /team_division_informations/1.json
  def update
    respond_to do |format|
      if @team_division_information.update(team_division_information_params)
        format.html { redirect_to @team_division_information, notice: 'Team division information was successfully updated.' }
        format.json { render :show, status: :ok, location: @team_division_information }
      else
        format.html { render :edit }
        format.json { render json: @team_division_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_division_informations/1
  # DELETE /team_division_informations/1.json
  def destroy
    @team_division_information.destroy
    respond_to do |format|
      format.html { redirect_to team_division_informations_url, notice: 'Team division information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_division_information
      @team_division_information = TeamDivisionInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_division_information_params
      params.require(:team_division_information).permit(:division_id, :team_id, :name, :organization, :high, :qp, :rp, :qual_wins, :qual_losses, :qual_ties, :elim_wins, :elim_losses, :elim_ties)
    end
end
