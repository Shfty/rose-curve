extends Control

onready var rect = $ColorRect

var time = 0.0

func _process(delta):
	time += delta
	var material = rect.material
	rect.material.set_shader_param("denominator", 7.0 - log(time * 20.0))
