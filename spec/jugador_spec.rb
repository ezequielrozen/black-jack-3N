require "./lib/jugador"

describe "Jugador" do

	it "El jugador deberia empezar activo" do
		partida = Partida.new
		partida.iniciarPartida
		expect(partida.getJugador(1).estaPlantado).to eq false
	end

	it "El jugador se planta y pasa de turno" do
		partida = Partida.new
		partida.iniciarPartida
		jugador = partida.getJugador(1)
		jugador.plantarse
		expect(jugador.estaPlantado).to eq true
		expect(jugador.estaActivo).to eq false
	end


end