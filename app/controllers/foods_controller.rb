class FoodsController < ApplicationController
  def index
    @foods = Food.includes(:user)
  end

  def new
    @food = Food.new()
  end

  def show
    @food = Food.find(params[:id])
    @comment = Comment.new
    @comments = Comment.includes(:user).order('created_at DESC')
  end

  def edit
    @food = Food.find(params[:id])
    if @food.user == current_user
      render :edit
    else
      redirect_to root_path
    end
  end

  def destroy
    @food = Food.find(params[:id])
    if @food.user == current_user
      @food.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  def update
    @food = Food.find(params[:id])
    if @food.update(food_params)
      redirect_to food_path
    else
      render :edit
    end
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