require './lib/jugador'
require './lib/mazo'


class Partida
	
	def initialize 
		@mazo = Mazo.new
	end

	def iniciarPartida
		@jugadores = [Jugador.new(@mazo.repartirCarta, @mazo.repartirCarta), Jugador.new(@mazo.repartirCarta, @mazo.repartirCarta)]
		@jugadores[0].activar
		@jugadorActivo = @jugadores[0]
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

	def getJugadores
		@jugadores
	end

	def getCantidadJugadores
		@jugadores.length
	end

	def plantarseJugadorActivo
		@jugadorActivo.plantarse
		@jugadorActivo = @jugadores[1]
		@jugadorActivo.activar

	end

end