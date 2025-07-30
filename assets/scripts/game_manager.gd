extends Node2D


var score = 0
@onready var score_label = $"../Player/UIManager/CoinLabel"

func add_point():
	score += 1
	score_label.text = str(score)
