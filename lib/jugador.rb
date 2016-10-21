class Jugador

	def initialize(carta1, carta2)
		@cartas = [carta1, carta2]
		@scoreJugador = 0

	end

	def cartasJugador
		@cartas
	end

	def pedirCarta(carta)
		@cartas.push(carta)
	end

	def scoreJugador
		@scoreJugador = @jugador.inject(0){|sum,x| sum + x }
	end
	
	
end