extends Node

var score = 0
@onready var tag_puntuation: Label = $"Has obtenido X monedas"

func increment_score():
	score += 1
	tag_puntuation.text = "Has obtenido\n" + str(score) + " monedas."
	
