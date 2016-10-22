class Jugador

	def initialize(carta1, carta2)
		@cartas = [carta1, carta2]
		@scoreJugador = 0
		@plantado = false
		@activo = false

	end

	def cartasJugador
		@cartas
	end

	def pedirCarta(carta)
		@cartas.push(carta)
	end

	def scoreJugador
		@scoreJugador = @cartas.inject(0){|sum,x|
			if (x > 10)
				x = 10
			end
			sum + x 
		}
	end
	
	def plantarse
		@plantado = true
		@activo = false
	end

	def estaPlantado
		@plantado
	end

	def activar
		@activo = true
	end

	def estaActivo
		@activo
	end
	
end