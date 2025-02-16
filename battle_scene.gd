extends Node2D

var Fighter = preload("res://fighter.tscn")
var rng = RandomNumberGenerator.new()

func _ready():
	# Spawn blue team
	for i in range(10):
		spawn_fighter(Color.BLUE, Vector2(100 + rng.randf_range(-50, 50), 100 + rng.randf_range(-50, 50)))
	
	# Spawn red team
	for i in range(10):
		spawn_fighter(Color.RED, Vector2(924 + rng.randf_range(-50, 50), 500 + rng.randf_range(-50, 50)))

func spawn_fighter(team_color: Color, pos: Vector2):
	var fighter = Fighter.instantiate()
	fighter.team_color = team_color
	fighter.position = pos
	add_child(fighter)