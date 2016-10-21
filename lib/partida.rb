require 'mazo'
require 'jugador'

class Partida
	
	def initialize 
		@mazo = Mazo.new
		
	end

	def iniciarPartida
		@jugador = Jugador.new(@mazo.repartirCarta, @mazo.repartirCarta)
	end

	def cartasJugador
		@jugador.cartasJugador
	end

	def pedirCarta
		@jugador.pedirCarta(@mazo.repartirCarta)
	end

	def resetear
		@mazo = Mazo.new
	end

	def cantCartasMazo
		@mazo.cantCartas
	end

	def getJugador
		@jugador
	end
end