require 'mazo'
require 'jugador'

class Partida
	
	def initialize 
		@mazo = Mazo.new
		
	end

	def iniciarPartida
		@jugadores = [Jugador.new(@mazo.repartirCarta, @mazo.repartirCarta), Jugador.new(@mazo.repartirCarta, @mazo.repartirCarta)]
	end

	def cartasJugador(jugadorNumero)
		@jugadores[jugadorNumero].cartasJugador
	end

	def pedirCarta(jugadorNumero)
		@jugadores[jugadorNumero].pedirCarta(@mazo.repartirCarta)
	end

	def resetear
		@mazo = Mazo.new
	end

	def cantCartasMazo
		@mazo.cantCartas
	end

	def getJugador(jugadorNumero)
		@jugadores[jugadorNumero]
	end

	def getCantidadJugadores
		@jugadores.length
	end
end