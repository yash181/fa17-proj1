class PokemonsController <ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to root_path
	end
	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10
		@pokemon.save
		@trainer_id = @pokemon.trainer.id
		if @pokemon.health <= 0
			@pokemon.destroy
		end
		redirect_to trainer_path(@trainer_id)
	end
	def new
		@pokemon = Pokemon.new
	end
	def create
		@pokemon = Pokemon.create( name: params[:pokemon][:name], trainer: current_trainer , level: 1, health: 100)
		if @pokemon.save
			redirect_to trainer_path(current_trainer.id)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_pokemon_path
		end
	end
end