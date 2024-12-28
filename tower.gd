extends Node2D

const lightupstart = 50

@onready var ball: Sprite2D = $Sprite2D
@onready var sprite_2d_2: Sprite2D = $Node2D/Sprite2D2
@onready var sprite_2d_3: Sprite2D = $Node2D/Sprite2D3
@onready var sprite_2d_4: Sprite2D = $Node2D/Sprite2D4
@onready var sprite_2d_5: Sprite2D = $Node2D/Sprite2D5
@onready var sprite_2d_6: Sprite2D = $Node2D/Sprite2D6
@onready var sprite_2d_7: Sprite2D = $Node2D/Sprite2D7
@onready var label: Label = $Node2D/Label
@onready var sprite_2d_8: Sprite2D = $Node2D/Sprite2D8

func _ready() -> void:
	var date = Time.get_date_dict_from_system()
	label.text = str(date["year"] + 1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.get_minutes() >= lightupstart + 0 and Global.hour == 23:
		sprite_2d_8.show()
	if Global.get_minutes() >= lightupstart + 1 and Global.hour == 23:
		label.show()
	if Global.get_minutes() >= lightupstart + 2 and Global.hour == 23:
		sprite_2d_7.show()
	if Global.get_minutes() >= lightupstart + 3 and Global.hour == 23:
		sprite_2d_6.show()
	if Global.get_minutes() >= lightupstart + 4 and Global.hour == 23:
		sprite_2d_5.show()
	if Global.get_minutes() >= lightupstart + 5 and Global.hour == 23:
		sprite_2d_4.show()
	if Global.get_minutes() >= lightupstart + 6 and Global.hour == 23:
		sprite_2d_3.show()
	if Global.get_minutes() >= lightupstart + 7 and Global.hour == 23:
		sprite_2d_2.show()
	if Global.get_minutes() >= lightupstart + 8 and Global.hour == 23:
		ball.show()
		
	if Global.left > 60:
		ball.position.y = 50
	else:
		ball.position.y = (Global.left*-470/60)+520
	if Global.get_is_new_year():
		ball.position.y = 520
