class AwardWinnersController < ApplicationController
  skip_before_action :require_login, only: [:show, :index]
  before_action :set_award_winner, only: [:show, :edit, :update, :destroy]

  # GET /award_winners
  # GET /award_winners.json
  def index
    @award_winners = AwardWinner.all
  end

  # GET /award_winners/1
  # GET /award_winners/1.json
  def show
  end

  # GET /award_winners/new
  def new
    @award_winner = AwardWinner.new
  end

  # GET /award_winners/1/edit
  def edit
  end

  # POST /award_winners
  # POST /award_winners.json
  def create
    @award_winner = AwardWinner.new(award_winner_params)

    respond_to do |format|
      if @award_winner.save
        format.html { redirect_to @award_winner, notice: 'Award winner was successfully created.' }
        format.json { render :show, status: :created, location: @award_winner }
      else
        format.html { render :new }
        format.json { render json: @award_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /award_winners/1
  # PATCH/PUT /award_winners/1.json
  def update
    respond_to do |format|
      if @award_winner.update(award_winner_params)
        format.html { redirect_to @award_winner, notice: 'Award winner was successfully updated.' }
        format.json { render :show, status: :ok, location: @award_winner }
      else
        format.html { render :edit }
        format.json { render json: @award_winner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /award_winners/1
  # DELETE /award_winners/1.json
  def destroy
    @award_winner.destroy
    respond_to do |format|
      format.html { redirect_to award_winners_url, notice: 'Award winner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_award_winner
      @award_winner = AwardWinner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def award_winner_params
      params.require(:award_winner).permit(:event_id, :award_id, :team_id, :place)
    end
end
