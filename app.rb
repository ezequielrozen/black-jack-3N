require 'sinatra'
require './lib/partida'


@@partida = Partida.new
@@partida.iniciarPartida
get '/sala' do
    erb :sala
end

post '/jugador/carta/:id' do |id|
	@@partida.pedirCarta(id.to_i)
	erb :sala
end

post '/jugador/plantarse/:id' do |id|
	@@partida.getJugador(id.to_i).plantarse
	erb :sala
end