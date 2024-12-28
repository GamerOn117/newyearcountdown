extends Node2D

@onready var h1: Label = $h1
@onready var color_rect: ColorRect = $ColorRect

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#format time left into text
	var thetext = ""
	var thezoom = 1
	if Global.left % 60 >= 10:
		thetext = str(Global.left % 60)
	else:
		thetext = "0" + str(Global.left % 60)
	if Global.left == 60:
		thetext = "60"
	if Global.left >= 61:
		if Global.left % 3600 >= 600:
			thetext = str(int((Global.left % 3600)/60)) + ":" + thetext
		else:
			thetext = "0" + str(int((Global.left % 3600)/60)) + ":" + thetext
		thezoom = .75
	if Global.left >= 3600:
		if Global.left / 3600 >= 10:
			thetext = str(int(Global.left / 3600)) + ":" + thetext
		else:
			thetext = "0" + str(int(Global.left / 3600)) + ":" + thetext
		thezoom = .5
	h1.scale = Vector2(thezoom, thezoom)
	h1.text = thetext
	h1.position = Vector2(576-h1.size.x/2, 324-h1.size.y/2)
	h1.pivot_offset = Vector2(h1.size.x/2, h1.size.y/2)
	if Global.get_is_new_year():
		h1.text = "Happy new year!"
