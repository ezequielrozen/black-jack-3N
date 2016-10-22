require "./lib/partida"

describe "Partida de BlackJack" do
	it "se inician dos jugadore" do
		partida = Partida.new
		partida.iniciarPartida
		expect(partida.getCantidadJugadores).to eq 2
	end

	it "Se debe iniciar una nueva partida" do 
		partida = Partida.new
		partida.iniciarPartida
		expect(partida.cartasJugador(1).length).to eq 2
	end

	it "si pide una nueva carta" do
		partida = Partida.new
		partida.iniciarPartida
		partida.pedirCarta(1)
		expect(partida.cartasJugador(1).length).to eq 3
	end

	it "Se resetea el mazo" do
		partida = Partida.new
		partida.iniciarPartida
		partida.resetear
		expect(partida.cantCartasMazo).to eq 52
	end

	it "Se inicia un turno" do
		partida = Partida.new
		partida.iniciarPartida
		expect(partida.getJugador(0).estaActivo).to eq true
	end
end