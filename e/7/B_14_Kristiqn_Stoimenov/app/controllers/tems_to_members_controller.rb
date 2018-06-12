class TemsToMembersController < ApplicationController
  before_action :set_tems_to_member, only: [:show, :edit, :update, :destroy]

  # GET /tems_to_members
  # GET /tems_to_members.json
  def index
    @tems_to_members = TemsToMember.all
  end

  # GET /tems_to_members/1
  # GET /tems_to_members/1.json
  def show
  end

  # GET /tems_to_members/new
  def new
    @tems_to_member = TemsToMember.new
  end

  # GET /tems_to_members/1/edit
  def edit
  end

  # POST /tems_to_members
  # POST /tems_to_members.json
  def create
    @tems_to_member = TemsToMember.new(tems_to_member_params)

    respond_to do |format|
      if @tems_to_member.save
        format.html { redirect_to @tems_to_member, notice: 'Tems to member was successfully created.' }
        format.json { render :show, status: :created, location: @tems_to_member }
      else
        format.html { render :new }
        format.json { render json: @tems_to_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tems_to_members/1
  # PATCH/PUT /tems_to_members/1.json
  def update
    respond_to do |format|
      if @tems_to_member.update(tems_to_member_params)
        format.html { redirect_to @tems_to_member, notice: 'Tems to member was successfully updated.' }
        format.json { render :show, status: :ok, location: @tems_to_member }
      else
        format.html { render :edit }
        format.json { render json: @tems_to_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tems_to_members/1
  # DELETE /tems_to_members/1.json
  def destroy
    @tems_to_member.destroy
    respond_to do |format|
      format.html { redirect_to tems_to_members_url, notice: 'Tems to member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tems_to_member
      @tems_to_member = TemsToMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tems_to_member_params
      params.require(:tems_to_member).permit(:team_color, :member_name)
    end
end
