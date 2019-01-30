class GroceriesController < ApplicationController
  before_action :all_groceries, only: [:index, :create, :update, :destroy]
  before_action :set_grocery, only: [:show, :edit, :update, :destroy]

  # GET /groceries
  # GET /groceries.json
  def index
    @groceries = Grocery.all
  end

  # GET /groceries/1
  # GET /groceries/1.json
  def show
  end

  # GET /groceries/new
  def new
    @grocery = Grocery.new
  end

  # GET /groceries/1/edit
  def edit
  end

  # POST /groceries
  # POST /groceries.json
  def create
    @grocery = Grocery.new(grocery_params)
  end

  # PATCH/PUT /groceries/1
  # PATCH/PUT /groceries/1.json
  def update
    @grocery.update(grocery_params)
  end

  # DELETE /groceries/1
  # DELETE /groceries/1.json
  def destroy
    @grocery.destroy
  end

  private
    def all_groceries
      @groceries = Grocery.all
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_grocery
      @grocery = Grocery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grocery_params
      params.require(:grocery).permit(:product, :category, :quantity)
    end
end
