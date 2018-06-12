class MembersTeamsController < ApplicationController
  before_action :set_members_team, only: [:show, :edit, :update, :destroy]

  # GET /members_teams
  # GET /members_teams.json
  def index
    @members_teams = MembersTeam.all
  end

  # GET /members_teams/1
  # GET /members_teams/1.json
  def show
  end

  # GET /members_teams/new
  def new
    @members_team = MembersTeam.new
  end

  # GET /members_teams/1/edit
  def edit
  end

  # POST /members_teams
  # POST /members_teams.json
  def create
    @members_team = MembersTeam.new(members_team_params)

    respond_to do |format|
      if @members_team.save
        format.html { redirect_to @members_team, notice: 'Members team was successfully created.' }
        format.json { render :show, status: :created, location: @members_team }
      else
        format.html { render :new }
        format.json { render json: @members_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members_teams/1
  # PATCH/PUT /members_teams/1.json
  def update
    respond_to do |format|
      if @members_team.update(members_team_params)
        format.html { redirect_to @members_team, notice: 'Members team was successfully updated.' }
        format.json { render :show, status: :ok, location: @members_team }
      else
        format.html { render :edit }
        format.json { render json: @members_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members_teams/1
  # DELETE /members_teams/1.json
  def destroy
    @members_team.destroy
    respond_to do |format|
      format.html { redirect_to members_teams_url, notice: 'Members team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_members_team
      @members_team = MembersTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def members_team_params
      params.require(:members_team).permit(:member_id, :team_id)
    end
end
