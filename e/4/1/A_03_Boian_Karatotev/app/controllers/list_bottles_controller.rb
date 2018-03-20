class ListBottlesController < ApplicationController
  before_action :set_bottle, only: [:show, :edit, :update, :destroy]

  # GET /bottles
  # GET /bottles.json
  def index
    @bottles = Bottle.all
  end

  # GET /bottles/1
  # GET /bottles/1.json
  def show
  end
end
