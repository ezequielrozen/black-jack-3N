require "./lib/jugador"

describe "Jugador" do

	it "El jugador deberia empezar activo" do
		partida = Partida.new
		partida.iniciarPartida
		expect(partida.getJugador.estaPlantado).to eq false
	end
end