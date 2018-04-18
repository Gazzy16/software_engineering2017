class SubUsersController < ApplicationController
  before_action :set_sub_user, only: [:show, :edit, :update, :destroy]

  # GET /sub_users
  # GET /sub_users.json
  def index
    @sub_users = SubUser.all
    @users = User.all
    @subs = Sub.all
  end

  # GET /sub_users/1
  # GET /sub_users/1.json
  def show
  end

  # GET /sub_users/new
  def new
    @sub_user = SubUser.new
  end

  # GET /sub_users/1/edit
  def edit
  end

  # POST /sub_users
  # POST /sub_users.json
  def create
    @sub_user = SubUser.new(sub_user_params)

    respond_to do |format|
      if @sub_user.save
        format.html { redirect_to @sub_user, notice: 'Sub user was successfully created.' }
        format.json { render :show, status: :created, location: @sub_user }
      else
        format.html { render :new }
        format.json { render json: @sub_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_users/1
  # PATCH/PUT /sub_users/1.json
  def update
    respond_to do |format|
      if @sub_user.update(sub_user_params)
        format.html { redirect_to @sub_user, notice: 'Sub user was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_user }
      else
        format.html { render :edit }
        format.json { render json: @sub_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_users/1
  # DELETE /sub_users/1.json
  def destroy
    @sub_user.destroy
    respond_to do |format|
      format.html { redirect_to sub_users_url, notice: 'Sub user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_user
      @sub_user = SubUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_user_params
      params.require(:sub_user).permit(:user_id, :sub_id, :role)
    end
end
