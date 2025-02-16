extends CharacterBody2D

var team_color: Color
var speed = 100
var target = null
var health = 100

func _ready():
	$ColorRect.color = team_color

func _physics_process(delta):
	if target:
		var direction = (target.position - position).normalized()
		velocity = direction * speed
		move_and_slide()

func take_damage(amount):
	health -= amount
	if health <= 0:
		queue_free()