Feature: Iniciar partrida para un jugador

Scenario: el usuario entra a la sala y recibe una carta
	Given Usuario ingresa a la sala 
	Then Ve un titulo que dice "Black Jack 3N"
	And Recibe carta 1

Scenario: el usuario entra a la sala y recibe 2 cartas
	Given Usuario ingresa a la sala	
	Then Recibe carta 1
	And Recibe carta 2