class CreatureController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def new
    @creature = Creature.new
  end

  def create
    creature = Creature.create creature_params
    redirect_to main
  end

  def show
    @creature = Creature.find params[:id]
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def creature_params
    params.require(:creature).permit(:name, :description)
end
