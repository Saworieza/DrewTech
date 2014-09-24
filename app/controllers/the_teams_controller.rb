class TheTeamsController < ApplicationController
  before_action :set_the_team, only: [:show, :edit, :update, :destroy]

  # GET /the_teams
  # GET /the_teams.json
  def index
    @the_teams = TheTeam.all
  end

  # GET /the_teams/1
  # GET /the_teams/1.json
  def show
  end

  # GET /the_teams/new
  def new
    @the_team = TheTeam.new
  end

  # GET /the_teams/1/edit
  def edit
  end

  # POST /the_teams
  # POST /the_teams.json
  def create
    @the_team = TheTeam.new(the_team_params)

    respond_to do |format|
      if @the_team.save
        format.html { redirect_to @the_team, notice: 'The team was successfully created.' }
        format.json { render :show, status: :created, location: @the_team }
      else
        format.html { render :new }
        format.json { render json: @the_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /the_teams/1
  # PATCH/PUT /the_teams/1.json
  def update
    respond_to do |format|
      if @the_team.update(the_team_params)
        format.html { redirect_to @the_team, notice: 'The team was successfully updated.' }
        format.json { render :show, status: :ok, location: @the_team }
      else
        format.html { render :edit }
        format.json { render json: @the_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /the_teams/1
  # DELETE /the_teams/1.json
  def destroy
    @the_team.destroy
    respond_to do |format|
      format.html { redirect_to the_teams_url, notice: 'The team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_the_team
      @the_team = TheTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def the_team_params
      params[:the_team]
    end
end
