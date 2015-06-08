class CreaturesController < ApplicationController
  # method that renders all creatures
  def index
    # declare instance variable that represents all creatures
    @creatures = Creature.all
  end
  # method that finds creature by id
  def show
  	id = params[:id]
  	@creature = Creature.find(id)
  end
    # method that serves up new.html.erb
  def new
  	@creature = Creature.new
  end
  # method that find creature by id and renders edit.html.erb
  def edit
  	id = params[:id]
  	@creature = Creature.find(id)
  end
  # method that creates new creature
  def create
  	new_creature = params.require(:creature).permit(:name, :description)
  	creature = Creature.create(new_creature)
  	redirect_to "/creatures/#{creature.id}"
  end
  # method that takes updated data and appends it
  def update
  	creature_id = params[:id]
  	creature = Creature.find(id)
  	# updated data
  	updated_attributes = params.require(:creature).permit(:name, :description)
  	# append
  	creature.update_attributes(updated_attributes)
  	# show updated creature
  	redirect_to "/creatures/#{creature_id}"
  end
end
