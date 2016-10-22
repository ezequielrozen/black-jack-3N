require "./lib/jugador"

describe "Jugador" do

	it "El jugador deberia empezar activo" do
		partida = Partida.new
		partida.iniciarPartida
		expect(partida.getJugador.estaPlantado).to eq false
	end

	it "El jugador se planta" do
		partida = Partida.new
		partida.iniciarPartida
		jugador = partida.getJugador
		jugador.plantarse
		expect(jugador.estaPlantado).to eq true
	end


end