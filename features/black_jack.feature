Feature: Iniciar partrida para un jugador

Scenario: el usuario 1 entra a la sala y recibe una carta
	Given Usuario ingresa a la sala 
	Then Ve un titulo que dice "Black Jack 3N"
	And Recibe cartas el jugador 1

Scenario: el usuario 2 entra a la sala y recibe una carta
	Given Usuario ingresa a la sala 
	Then Ve un titulo que dice "Black Jack 3N"
	And Recibe cartas el jugador 2

Scenario: La sala contiene un boton para pedir carta
	Given Usuario ingresa a la sala
	Then Ve el boton "pedir-carta"

Scenario: La sala contiene un boton para plantarse
	Given Usuario ingresa a la sala
	Then Ve el boton "plantarse"

Scenario: El jugador 1 pide una carta
	Given Usuario ingresa a la sala
	Then Aprieta el boton "Pedir carta"
	And Ve la carta 3

Scenario: El jugador 1 pide una segunda carta carta
	Given Usuario ingresa a la sala
	Then Aprieta el boton "Pedir carta"
	And Aprieta el boton "Pedir carta"
	And Ve la carta 4


