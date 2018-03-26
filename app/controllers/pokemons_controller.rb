class PokemonsController < ApplicationController
  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.trainer = current_trainer
    pokemon.save
    redirect_to root_path
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    trainer = pokemon.trainer
    pokemon.health = pokemon.health - 10
    if pokemon.health <= 0
      pokemon.destroy
    else
      pokemon.save
    end
    redirect_to trainer_path(trainer)
  end

  def create
    pokemon = Pokemon.create(pokemon_params)
    pokemon.trainer = current_trainer
    if pokemon.save
      redirect_to trainer_path(current_trainer)
    else
      flash[:error] = pokemon.errors.full_messages.to_sentence
      redirect_to new_pokemon_path
    end
  end

  def new
    @pokemon = Pokemon.new
  end

  private
  def pokemon_params
    params.require(:pokemon).permit(:name, :ndex)
  end
end
