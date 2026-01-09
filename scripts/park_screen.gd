extends Panel

@export var tween_intensity: float
@export var tween_duration: float

@export var dog_lost: bool = false

@onready var Hole: Button = $holeButton
@onready var Police: Button = $policeButton
@onready var glow_hole: Sprite2D = $GlowHole
@onready var glow_police: Sprite2D = $GlowPolice

@onready var policeDialog: Sprite2D = $PoliceD1
@onready var dog_gameBG: Sprite2D = $DogGameBg
@onready var dogBG: ColorRect = $DogBG
@onready var done: Button = $Done
@onready var stella: TextureButton = $Stella
@onready var taco: TextureButton = $Taco
@onready var enrique: TextureButton = $Enrique
@onready var big_dog: TextureButton = $bigDog
@onready var medium_dog: TextureButton = $mediumDog
@onready var small_dog: TextureButton = $smallDog
@onready var spotNone: TextureButton = $SpotColorNone
@onready var spotBlack: TextureButton = $SpotColorBlack
@onready var spotWhite: TextureButton = $SpotColorWhite
@onready var spotBrown: TextureButton = $SpotColorBrown
@onready var spotCream: TextureButton = $SpotColorCream
@onready var flatCream: TextureButton = $FlatColorCream
@onready var flatBrown: TextureButton = $FlatColorBrown
@onready var flatWhite: TextureButton = $FlatColorWhite
@onready var flatBlack: TextureButton = $FlatColorBlack


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	glow_hole.visible = false
	if Hole.is_hovered():
		buttonHovered(Hole, glow_hole)
	else:
		buttonHovered(Hole, glow_hole)
	if Police.is_hovered():
		buttonHovered(Police, glow_police)
	else:
		buttonHovered(Police, glow_police)

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
		
func callDogAnim():
	print("Dog runs into the hole")
	dog_lost = true
	Hole.visible = false
	Police.visible = true

func callDogGame():
	Police.visible = false
	policeDialog.visible = true
	dog_gameBG.visible = true
	dogBG.visible = true
	done.visible = true
	stella.visible = true
	taco.visible = true
	enrique.visible = true
	big_dog.visible = true
	medium_dog.visible = true
	small_dog.visible = true
	spotNone.visible = true
	spotBlack.visible = true
	spotWhite.visible = true
	spotBrown.visible = true
	spotCream.visible = true
	flatCream.visible = true
	flatBrown.visible = true
	flatWhite.visible = true
	flatBlack.visible = true
