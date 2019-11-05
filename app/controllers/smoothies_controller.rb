class SmoothiesController < ApplicationController
  def index
    @smoothies = Smoothie.all
  end

  def show
    @smoothie = Smoothie.find(params[:id])
  end

  def new
  end

  def create
    @smoothie = Smoothie.new
    @smoothie.name = params[:name]
    @smoothie.ingredient1 = Ingredient.find_or_create_by(name: params[:ingredient1])
    @smoothie.ingredient2 = Ingredient.find_or_create_by(name: params[:ingredient2])
    @smoothie.ingredient3 = Ingredient.find_or_create_by(name: params[:ingredient3])
    @smoothie.ingredient4 = Ingredient.find_or_create_by(name: params[:ingredient4])
    @smoothie.ingredient5 = Ingredient.find_or_create_by(name: params[:ingredient5])
    @smoothie.save

    redirect_to smoothies_path(@smoothie)
  end

  def edit
    @smoothie = Smoothie.find(params[:id])
  end

  def update
    @smoothie = Smoothie.find(params[:id])
    @smoothie.name = params[:name]
    @smoothie.ingredient1 = Ingredient.find_or_create_by(name: params[:ingredient1])
    @smoothie.ingredient2 = Ingredient.find_or_create_by(name: params[:ingredient2])
    @smoothie.ingredient3 = Ingredient.find_or_create_by(name: params[:ingredient3])
    @smoothie.ingredient4 = Ingredient.find_or_create_by(name: params[:ingredient4])
    @smoothie.ingredient5 = Ingredient.find_or_create_by(name: params[:ingredient5])
    @smoothie.save

    redirect_to smoothies_path(@smoothie)
  end

  def destroy
    @smoothie = Smoothie.find(params[:id])
    @smoothie.destroy
    redirect_to smoothies_path
  end
end
