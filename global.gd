extends Node

var time = Time.get_time_dict_from_system()
var hour = time["hour"]
var minute = time["minute"]
func get_minutes():
	return minute
var second = time["second"]
var seconds = hour*3600 + minute*60 + second
var left = 86400 - seconds
var is_new_year = false
func get_is_new_year():
	return is_new_year

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time = Time.get_time_dict_from_system()
	hour = time["hour"]
	minute = time["minute"]
	second = time["second"]
	seconds = hour*3600 + minute*60 + second
	left = 86400 - seconds
	if left == 86400:
		is_new_year = true
