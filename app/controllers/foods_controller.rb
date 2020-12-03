class FoodsController < ApplicationController
  def index
    @foods = Food.includes(:user)
  end

  def new
    @food = Food.new()
  end

  def show
    @food = Food.find(params[:id])
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def food_params
    params.require(:food).permit(:name, :example, :category_id, :prefecture_id, :price, :image).merge(user_id: current_user.id)
  end
end


# :category_id,