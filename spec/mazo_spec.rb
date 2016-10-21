require "./lib/mazo"

describe "Mazo cartas" do
	it "Repartir carta" do
		mazo = Mazo.new
		expect( (1..13) === mazo.repartirCarta).to eq true
	end

	it "Carta menos en el array" do
		mazo = Mazo.new
		mazo.repartirCarta
		expect(mazo.cantCartas).to eq 51
	end
end