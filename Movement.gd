extends Spatial

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	var speed = 0.5;
	# just execute command once
	if event.is_echo() or not event.is_pressed():
		return
	if event is InputEventKey:
		if event.scancode == KEY_W:
			self.translate( Vector3(0,0,-1) * speed)
		elif event.scancode == KEY_S:
			self.translate( Vector3(0,0,1) * speed)
		elif event.scancode == KEY_D:
			self.translate( Vector3(1,0,0) * speed)
		elif event.scancode == KEY_A:
			self.translate( Vector3(-1,0,0) * speed)
		elif event.scancode == KEY_E:
			self.rotate(Vector3.UP, deg2rad(90))
#			self.translate( Vector3(-1,0,0) * speed)
		elif event.scancode == KEY_Q:
			self.rotate(Vector3.UP, deg2rad(-90))
#			self.translate( Vector3(-1,0,0) * speed)
			
