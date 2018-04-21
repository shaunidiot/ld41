extends KinematicBody2D

var health = 100
var bloodColor = "red"
var moveSpeed = 50
var maxMoveSpeed = 300
var damage = 10
var knockback = 2000
var isAttacking = false

var isDead = false
var velocity = Vector2()

func _ready():
	set_process(true)

func _process(delta):
	z_index = 100 + position.y

func take_damage(damage):
	if(health > 0):
		health -= damage
		if(health <= 0):
			isDead = true
			death()
			
func take_knockback(knockback):
	move_and_slide(knockback)
	
func death():
	print("Please implement death in children!")
	
func toggle_on_is_attacking(binds=null):
	isAttacking = true
	
func toggle_off_is_attacking(binds=null):
	isAttacking = false