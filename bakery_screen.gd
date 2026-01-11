extends Panel

@export var tween_intensity: float
@export var tween_duration: float

@onready var notebook: Button = $Notebook
@onready var glow_notebook: Sprite2D = $GlowNotebook
@onready var exclamation: Sprite2D = $Exclamation


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	glow_notebook.visible = false
	if notebook.is_hovered():
		buttonHovered(notebook, glow_notebook)
	else:
		buttonHovered(notebook, glow_notebook)

func startTween(object: Object, property: String, final_val: Variant, duration: float):
	var tween = create_tween()
	tween.tween_property(object, property, final_val, duration)

func buttonHovered(button: Button, sprite2d: Sprite2D):
	button.pivot_offset = button.size / 2
	sprite2d.visible = false
	if button.is_hovered():
		sprite2d.visible = true
		startTween(button, "scale", Vector2.ONE * tween_intensity, tween_duration)
		startTween(sprite2d, "scale", Vector2.ONE * tween_intensity, tween_duration)

	else:
		sprite2d.visible = false
		startTween(button, "scale", Vector2.ONE, tween_duration)
		startTween(sprite2d, "scale", Vector2.ONE * tween_intensity, tween_duration)



func callGoBack():
	get_tree().change_scene_to_file("res://menu.tscn")
