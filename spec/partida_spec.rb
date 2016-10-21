require "./lib/partida"

describe "Partida de BlackJack" do
	it "Se debe iniciar una nueva partida" do 
		partida = Partida.new
		partida.iniciarPartida()
		expect(partida.cartasJugador.length).to eq 2
	end

	it "si pide una nueva carta" do
		partida = Partida.new
		partida.iniciarPartida
		partida.pedirCarta
		expect(partida.cartasJugador.length).to eq 3
	end
end