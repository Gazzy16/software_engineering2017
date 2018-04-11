class SubsUsersController < ApplicationController
  before_action :set_subs_user, only: [:show, :edit, :update, :destroy]

  # GET /subs_users
  # GET /subs_users.json
  def index
    @subs_users = SubsUser.all
  end

  # GET /subs_users/1
  # GET /subs_users/1.json
  def show
  end

  # GET /subs_users/new
  def new
    @subs_user = SubsUser.new
  end

  # GET /subs_users/1/edit
  def edit
  end

  # POST /subs_users
  # POST /subs_users.json
  def create
    @subs_user = SubsUser.new(subs_user_params)

    respond_to do |format|
      if @subs_user.save
        format.html { redirect_to @subs_user, notice: 'Subs user was successfully created.' }
        format.json { render :show, status: :created, location: @subs_user }
      else
        format.html { render :new }
        format.json { render json: @subs_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subs_users/1
  # PATCH/PUT /subs_users/1.json
  def update
    respond_to do |format|
      if @subs_user.update(subs_user_params)
        format.html { redirect_to @subs_user, notice: 'Subs user was successfully updated.' }
        format.json { render :show, status: :ok, location: @subs_user }
      else
        format.html { render :edit }
        format.json { render json: @subs_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subs_users/1
  # DELETE /subs_users/1.json
  def destroy
    @subs_user.destroy
    respond_to do |format|
      format.html { redirect_to subs_users_url, notice: 'Subs user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subs_user
      @subs_user = SubsUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subs_user_params
      params.require(:subs_user).permit(:iserid, :subscriptionid, :type)
    end
end
