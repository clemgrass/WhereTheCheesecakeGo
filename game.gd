extends Node

signal nikola_expression_changed
signal soul_changed
signal background_changed

var soul = 100 setget set_soul

var nikola_expression = preload("res://Assets/media/nikola.png") setget set_nikola_expression

var background = preload("res://Assets/media/intro/fotograma0000.png") setget set_background

var Q1 = false
var Q2 = false
var Q3 = false
var clue = false
var E1 = false
var E2 = false
var E3 = false

const START_SOUL = 100
const START_EXPRESSION = preload("res://Assets/media/nikola.png")
const START_BACKGROUND = preload("res://Assets/media/intro/fotograma0000.png")

# Starts a new run: restores soul and per-location progress.
# E1, E2 and E3 are kept on purpose: they remember which endings were
# reached in this session, and the secret ending needs all three.
func reset_run():
	self.soul = START_SOUL
	self.nikola_expression = START_EXPRESSION
	self.background = START_BACKGROUND
	Q1 = false
	Q2 = false
	Q3 = false
	clue = false

func set_soul(value):
	soul = value
	emit_signal("soul_changed", soul)

func set_nikola_expression(ex):
	nikola_expression = ex
	emit_signal("nikola_expression_changed", nikola_expression)

func set_background(back):
	background = back
	emit_signal("background_changed", background)
