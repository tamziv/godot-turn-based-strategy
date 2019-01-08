extends Node2D
var velocity = Vector2()


# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	velocity=Vector2(0,0)
	var speed=10
	if Input.is_action_pressed("ui_right"):
        velocity.x += 1
	elif Input.is_action_pressed("ui_left"):
        velocity.x -= 1
	elif Input.is_action_pressed("ui_down"):
        velocity.y += 1
	elif Input.is_action_pressed("ui_up"):
        velocity.y -= 1
	else: velocity=Vector2(0,0)
	print(String(velocity.x)+" "+String(velocity.y))
	if velocity.length() > 0:#(velocity.x>0)and(velocity.y>0):
		velocity = velocity.normalized() *speed
	print(String(velocity.x)+" "+String(velocity.y))	
	
	get_node("TileMap/icon").set_position(get_node("TileMap/icon").position+velocity)
	
	pass
