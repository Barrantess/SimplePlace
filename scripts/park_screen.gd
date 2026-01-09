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

#Sprites dogs
@onready var bigDogEmpty: Sprite2D = $BigEmptyDog
@onready var bigDogBlack: Sprite2D = $BigBlackDog
@onready var bigDogBrown: Sprite2D = $BigBrownDog
@onready var bigDogCream: Sprite2D = $BigCreamDog
@onready var bigDogWhite: Sprite2D = $BigWhiteDog
@onready var bigDogSpotsBlack: Sprite2D = $BigBlackSpots
@onready var bigDogSpotsBrown: Sprite2D = $BigBrownSpots
@onready var bigDogSpotsCream: Sprite2D = $BigCreamSpots
@onready var bigDogSpotsWhite: Sprite2D = $BigWhiteSpots

@onready var mediumDogEmpty: Sprite2D = $MediumEmptyDog
@onready var mediumDogBlack: Sprite2D = $MediumBlackDog
@onready var mediumDogBrown: Sprite2D = $MediumBrownDog
@onready var mediumDogCream: Sprite2D = $MediumCreamDog
@onready var mediumDogWhite: Sprite2D = $MediumWhiteDog
@onready var mediumDogSpotsBlack: Sprite2D = $MediumBlackSpots
@onready var mediumDogSpotsBrown: Sprite2D = $MediumBrownSpots
@onready var mediumDogSpotsCream: Sprite2D = $MediumCreamSpots
@onready var mediumDogSpotsWhite: Sprite2D = $MediumWhiteSpots

@onready var smallDogEmpty: Sprite2D = $SmallEmptyDog
@onready var smallDogBlack: Sprite2D = $Smallblackdog
@onready var smallDogBrown: Sprite2D = $Smallbrowndog
@onready var smallDogCream: Sprite2D = $Smallcreamdog
@onready var smallDogWhite: Sprite2D = $Smallwhitedog
@onready var smallDogSpotsBlack: Sprite2D = $Smallblackspots
@onready var smallDogSpotsBrown: Sprite2D = $Smallbrownspots
@onready var smallDogSpotsCream: Sprite2D = $Smallcreamspots
@onready var smallDogSpotsWhite: Sprite2D = $Smallwhitespots

@export var size_selected: bool = false
@export var flat_selected: bool = false

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
	
func callBigEmptyDog():
	size_selected = true
	bigDogEmpty.visible = true
	mediumDogEmpty.visible = false
	smallDogEmpty.visible = false
	bigDogBlack.visible = false
	bigDogBrown.visible = false
	bigDogCream.visible = false
	bigDogWhite.visible = false
	mediumDogBlack.visible = false
	mediumDogBrown.visible = false
	mediumDogCream.visible = false
	mediumDogWhite.visible = false
	smallDogBlack.visible = false
	smallDogBrown.visible = false
	smallDogCream.visible = false
	smallDogWhite.visible = false
	bigDogSpotsBlack.visible = false
	bigDogSpotsBrown.visible = false
	bigDogSpotsCream.visible = false
	bigDogSpotsWhite.visible = false
	mediumDogSpotsBlack.visible = false
	mediumDogSpotsBrown.visible = false
	mediumDogSpotsCream.visible = false
	mediumDogSpotsWhite.visible = false
	smallDogSpotsBlack.visible = false
	smallDogSpotsBrown.visible = false
	smallDogSpotsCream.visible = false
	smallDogSpotsWhite.visible = false

func callMediumEmptyDog():
	size_selected = true
	bigDogEmpty.visible = false
	mediumDogEmpty.visible = true
	smallDogEmpty.visible = false
	bigDogBlack.visible = false
	bigDogBrown.visible = false
	bigDogCream.visible = false
	bigDogWhite.visible = false
	mediumDogBlack.visible = false
	mediumDogBrown.visible = false
	mediumDogCream.visible = false
	mediumDogWhite.visible = false
	smallDogBlack.visible = false
	smallDogBrown.visible = false
	smallDogCream.visible = false
	smallDogWhite.visible = false
	bigDogSpotsBlack.visible = false
	bigDogSpotsBrown.visible = false
	bigDogSpotsCream.visible = false
	bigDogSpotsWhite.visible = false
	mediumDogSpotsBlack.visible = false
	mediumDogSpotsBrown.visible = false
	mediumDogSpotsCream.visible = false
	mediumDogSpotsWhite.visible = false
	smallDogSpotsBlack.visible = false
	smallDogSpotsBrown.visible = false
	smallDogSpotsCream.visible = false
	smallDogSpotsWhite.visible = false
	
func callSmallEmptyDog():
	size_selected = true
	bigDogEmpty.visible = false
	mediumDogEmpty.visible = false
	smallDogEmpty.visible = true
	bigDogBlack.visible = false
	bigDogBrown.visible = false
	bigDogCream.visible = false
	bigDogWhite.visible = false
	mediumDogBlack.visible = false
	mediumDogBrown.visible = false
	mediumDogCream.visible = false
	mediumDogWhite.visible = false
	smallDogBlack.visible = false
	smallDogBrown.visible = false
	smallDogCream.visible = false
	smallDogWhite.visible = false
	bigDogSpotsBlack.visible = false
	bigDogSpotsBrown.visible = false
	bigDogSpotsCream.visible = false
	bigDogSpotsWhite.visible = false
	mediumDogSpotsBlack.visible = false
	mediumDogSpotsBrown.visible = false
	mediumDogSpotsCream.visible = false
	mediumDogSpotsWhite.visible = false
	smallDogSpotsBlack.visible = false
	smallDogSpotsBrown.visible = false
	smallDogSpotsCream.visible = false
	smallDogSpotsWhite.visible = false
	
func callFlatBlack():
	flat_selected = true
	if size_selected == true:
		if bigDogEmpty.visible == true:
			bigDogBlack.visible = true
			bigDogBrown.visible = false
			bigDogCream.visible = false
			bigDogWhite.visible = false
			mediumDogBlack.visible = false
			mediumDogBrown.visible = false
			mediumDogCream.visible = false
			mediumDogWhite.visible = false
			smallDogBlack.visible = false
			smallDogBrown.visible = false
			smallDogCream.visible = false
			smallDogWhite.visible = false
		if mediumDogEmpty.visible == true:
			bigDogBlack.visible = false
			bigDogBrown.visible = false
			bigDogCream.visible = false
			bigDogWhite.visible = false
			mediumDogBlack.visible = true
			mediumDogBrown.visible = false
			mediumDogCream.visible = false
			mediumDogWhite.visible = false
			smallDogBlack.visible = false
			smallDogBrown.visible = false
			smallDogCream.visible = false
			smallDogWhite.visible = false
		if smallDogEmpty.visible == true:
			bigDogBlack.visible = false
			bigDogBrown.visible = false
			bigDogCream.visible = false
			bigDogWhite.visible = false
			mediumDogBlack.visible = false
			mediumDogBrown.visible = false
			mediumDogCream.visible = false
			mediumDogWhite.visible = false
			smallDogBlack.visible = true
			smallDogBrown.visible = false
			smallDogCream.visible = false
			smallDogWhite.visible = false

func callFlatBrown():
	flat_selected = true
	if size_selected == true:
		if bigDogEmpty.visible == true:
			bigDogBlack.visible = false
			bigDogBrown.visible = true
			bigDogCream.visible = false
			bigDogWhite.visible = false
			mediumDogBlack.visible = false
			mediumDogBrown.visible = false
			mediumDogCream.visible = false
			mediumDogWhite.visible = false
			smallDogBlack.visible = false
			smallDogBrown.visible = false
			smallDogCream.visible = false
			smallDogWhite.visible = false
		if mediumDogEmpty.visible == true:
			bigDogBlack.visible = false
			bigDogBrown.visible = false
			bigDogCream.visible = false
			bigDogWhite.visible = false
			mediumDogBlack.visible = false
			mediumDogBrown.visible = true
			mediumDogCream.visible = false
			mediumDogWhite.visible = false
			smallDogBlack.visible = false
			smallDogBrown.visible = false
			smallDogCream.visible = false
			smallDogWhite.visible = false
		if smallDogEmpty.visible == true:
			bigDogBlack.visible = false
			bigDogBrown.visible = false
			bigDogCream.visible = false
			bigDogWhite.visible = false
			mediumDogBlack.visible = false
			mediumDogBrown.visible = false
			mediumDogCream.visible = false
			mediumDogWhite.visible = false
			smallDogBlack.visible = false
			smallDogBrown.visible = true
			smallDogCream.visible = false
			smallDogWhite.visible = false

func callFlatCream():
	flat_selected = true
	if size_selected == true:
		if bigDogEmpty.visible == true:
			bigDogBlack.visible = false
			bigDogBrown.visible = false
			bigDogCream.visible = true
			bigDogWhite.visible = false
			mediumDogBlack.visible = false
			mediumDogBrown.visible = false
			mediumDogCream.visible = false
			mediumDogWhite.visible = false
			smallDogBlack.visible = false
			smallDogBrown.visible = false
			smallDogCream.visible = false
			smallDogWhite.visible = false
		if mediumDogEmpty.visible == true:
			bigDogBlack.visible = false
			bigDogBrown.visible = false
			bigDogCream.visible = false
			bigDogWhite.visible = false
			mediumDogBlack.visible = false
			mediumDogBrown.visible = false
			mediumDogCream.visible = true
			mediumDogWhite.visible = false
			smallDogBlack.visible = false
			smallDogBrown.visible = false
			smallDogCream.visible = false
			smallDogWhite.visible = false
		if smallDogEmpty.visible == true:
			bigDogBlack.visible = false
			bigDogBrown.visible = false
			bigDogCream.visible = false
			bigDogWhite.visible = false
			mediumDogBlack.visible = false
			mediumDogBrown.visible = false
			mediumDogCream.visible = false
			mediumDogWhite.visible = false
			smallDogBlack.visible = false
			smallDogBrown.visible = false
			smallDogCream.visible = true
			smallDogWhite.visible = false

func callFlatWhite():
	flat_selected = true
	if size_selected == true:
		if bigDogEmpty.visible == true:
			bigDogBlack.visible = false
			bigDogBrown.visible = false
			bigDogCream.visible = false
			bigDogWhite.visible = true
			mediumDogBlack.visible = false
			mediumDogBrown.visible = false
			mediumDogCream.visible = false
			mediumDogWhite.visible = false
			smallDogBlack.visible = false
			smallDogBrown.visible = false
			smallDogCream.visible = false
			smallDogWhite.visible = false
		if mediumDogEmpty.visible == true:
			bigDogBlack.visible = false
			bigDogBrown.visible = false
			bigDogCream.visible = false
			bigDogWhite.visible = false
			mediumDogBlack.visible = false
			mediumDogBrown.visible = false
			mediumDogCream.visible = false
			mediumDogWhite.visible = true
			smallDogBlack.visible = false
			smallDogBrown.visible = false
			smallDogCream.visible = false
			smallDogWhite.visible = false
		if smallDogEmpty.visible == true:
			bigDogBlack.visible = false
			bigDogBrown.visible = false
			bigDogCream.visible = false
			bigDogWhite.visible = false
			mediumDogBlack.visible = false
			mediumDogBrown.visible = false
			mediumDogCream.visible = false
			mediumDogWhite.visible = false
			smallDogBlack.visible = false
			smallDogBrown.visible = false
			smallDogCream.visible = false
			smallDogWhite.visible = true

func callSpotsNone():
	if size_selected == true and flat_selected:
		if bigDogEmpty.visible:
			bigDogSpotsBlack.visible = false
			bigDogSpotsBrown.visible = false
			bigDogSpotsCream.visible = false
			bigDogSpotsWhite.visible = false
			mediumDogSpotsBlack.visible = false
			mediumDogSpotsBrown.visible = false
			mediumDogSpotsCream.visible = false
			mediumDogSpotsWhite.visible = false
			smallDogSpotsBlack.visible = false
			smallDogSpotsBrown.visible = false
			smallDogSpotsCream.visible = false
			smallDogSpotsWhite.visible = false
		if mediumDogEmpty.visible == true:
			bigDogSpotsBlack.visible = false
			bigDogSpotsBrown.visible = false
			bigDogSpotsCream.visible = false
			bigDogSpotsWhite.visible = false
			mediumDogSpotsBlack.visible = false
			mediumDogSpotsBrown.visible = false
			mediumDogSpotsCream.visible = false
			mediumDogSpotsWhite.visible = false
			smallDogSpotsBlack.visible = false
			smallDogSpotsBrown.visible = false
			smallDogSpotsCream.visible = false
			smallDogSpotsWhite.visible = false
		if smallDogEmpty.visible == true:
			bigDogSpotsBlack.visible = false
			bigDogSpotsBrown.visible = false
			bigDogSpotsCream.visible = false
			bigDogSpotsWhite.visible = false
			mediumDogSpotsBlack.visible = false
			mediumDogSpotsBrown.visible = false
			mediumDogSpotsCream.visible = false
			mediumDogSpotsWhite.visible = false
			smallDogSpotsBlack.visible = false
			smallDogSpotsBrown.visible = false
			smallDogSpotsCream.visible = false
			smallDogSpotsWhite.visible = false
			
func callSpotsBlack():
	if size_selected == true and flat_selected:
		if bigDogEmpty.visible:
			bigDogSpotsBlack.visible = true
			bigDogSpotsBrown.visible = false
			bigDogSpotsCream.visible = false
			bigDogSpotsWhite.visible = false
			mediumDogSpotsBlack.visible = false
			mediumDogSpotsBrown.visible = false
			mediumDogSpotsCream.visible = false
			mediumDogSpotsWhite.visible = false
			smallDogSpotsBlack.visible = false
			smallDogSpotsBrown.visible = false
			smallDogSpotsCream.visible = false
			smallDogSpotsWhite.visible = false
		if mediumDogEmpty.visible == true:
			bigDogSpotsBlack.visible = false
			bigDogSpotsBrown.visible = false
			bigDogSpotsCream.visible = false
			bigDogSpotsWhite.visible = false
			mediumDogSpotsBlack.visible = true
			mediumDogSpotsBrown.visible = false
			mediumDogSpotsCream.visible = false
			mediumDogSpotsWhite.visible = false
			smallDogSpotsBlack.visible = false
			smallDogSpotsBrown.visible = false
			smallDogSpotsCream.visible = false
			smallDogSpotsWhite.visible = false
		if smallDogEmpty.visible == true:
			bigDogSpotsBlack.visible = false
			bigDogSpotsBrown.visible = false
			bigDogSpotsCream.visible = false
			bigDogSpotsWhite.visible = false
			mediumDogSpotsBlack.visible = false
			mediumDogSpotsBrown.visible = false
			mediumDogSpotsCream.visible = false
			mediumDogSpotsWhite.visible = false
			smallDogSpotsBlack.visible = true
			smallDogSpotsBrown.visible = false
			smallDogSpotsCream.visible = false
			smallDogSpotsWhite.visible = false
			
func callSpotsBrown():
	if size_selected == true and flat_selected:
		if bigDogEmpty.visible:
			bigDogSpotsBlack.visible = false
			bigDogSpotsBrown.visible = true
			bigDogSpotsCream.visible = false
			bigDogSpotsWhite.visible = false
			mediumDogSpotsBlack.visible = false
			mediumDogSpotsBrown.visible = false
			mediumDogSpotsCream.visible = false
			mediumDogSpotsWhite.visible = false
			smallDogSpotsBlack.visible = false
			smallDogSpotsBrown.visible = false
			smallDogSpotsCream.visible = false
			smallDogSpotsWhite.visible = false
		if mediumDogEmpty.visible == true:
			bigDogSpotsBlack.visible = false
			bigDogSpotsBrown.visible = false
			bigDogSpotsCream.visible = false
			bigDogSpotsWhite.visible = false
			mediumDogSpotsBlack.visible = false
			mediumDogSpotsBrown.visible = true
			mediumDogSpotsCream.visible = false
			mediumDogSpotsWhite.visible = false
			smallDogSpotsBlack.visible = false
			smallDogSpotsBrown.visible = false
			smallDogSpotsCream.visible = false
			smallDogSpotsWhite.visible = false
		if smallDogEmpty.visible == true:
			bigDogSpotsBlack.visible = false
			bigDogSpotsBrown.visible = false
			bigDogSpotsCream.visible = false
			bigDogSpotsWhite.visible = false
			mediumDogSpotsBlack.visible = false
			mediumDogSpotsBrown.visible = false
			mediumDogSpotsCream.visible = false
			mediumDogSpotsWhite.visible = false
			smallDogSpotsBlack.visible = false
			smallDogSpotsBrown.visible = true
			smallDogSpotsCream.visible = false
			smallDogSpotsWhite.visible = false

func callSpotsCream():
	if size_selected == true and flat_selected:
		if bigDogEmpty.visible:
			bigDogSpotsBlack.visible = false
			bigDogSpotsBrown.visible = false
			bigDogSpotsCream.visible = true
			bigDogSpotsWhite.visible = false
			mediumDogSpotsBlack.visible = false
			mediumDogSpotsBrown.visible = false
			mediumDogSpotsCream.visible = false
			mediumDogSpotsWhite.visible = false
			smallDogSpotsBlack.visible = false
			smallDogSpotsBrown.visible = false
			smallDogSpotsCream.visible = false
			smallDogSpotsWhite.visible = false
		if mediumDogEmpty.visible == true:
			bigDogSpotsBlack.visible = false
			bigDogSpotsBrown.visible = false
			bigDogSpotsCream.visible = false
			bigDogSpotsWhite.visible = false
			mediumDogSpotsBlack.visible = false
			mediumDogSpotsBrown.visible = false
			mediumDogSpotsCream.visible = true
			mediumDogSpotsWhite.visible = false
			smallDogSpotsBlack.visible = false
			smallDogSpotsBrown.visible = false
			smallDogSpotsCream.visible = false
			smallDogSpotsWhite.visible = false
		if smallDogEmpty.visible == true:
			bigDogSpotsBlack.visible = false
			bigDogSpotsBrown.visible = false
			bigDogSpotsCream.visible = false
			bigDogSpotsWhite.visible = false
			mediumDogSpotsBlack.visible = false
			mediumDogSpotsBrown.visible = false
			mediumDogSpotsCream.visible = false
			mediumDogSpotsWhite.visible = false
			smallDogSpotsBlack.visible = false
			smallDogSpotsBrown.visible = false
			smallDogSpotsCream.visible = true
			smallDogSpotsWhite.visible = false

func callSpotsWhite():
	if size_selected == true and flat_selected:
		if bigDogEmpty.visible:
			bigDogSpotsBlack.visible = false
			bigDogSpotsBrown.visible = false
			bigDogSpotsCream.visible = false
			bigDogSpotsWhite.visible = true
			mediumDogSpotsBlack.visible = false
			mediumDogSpotsBrown.visible = false
			mediumDogSpotsCream.visible = false
			mediumDogSpotsWhite.visible = false
			smallDogSpotsBlack.visible = false
			smallDogSpotsBrown.visible = false
			smallDogSpotsCream.visible = false
			smallDogSpotsWhite.visible = false
		if mediumDogEmpty.visible == true:
			bigDogSpotsBlack.visible = false
			bigDogSpotsBrown.visible = false
			bigDogSpotsCream.visible = false
			bigDogSpotsWhite.visible = false
			mediumDogSpotsBlack.visible = false
			mediumDogSpotsBrown.visible = false
			mediumDogSpotsCream.visible = false
			mediumDogSpotsWhite.visible = true
			smallDogSpotsBlack.visible = false
			smallDogSpotsBrown.visible = false
			smallDogSpotsCream.visible = false
			smallDogSpotsWhite.visible = false
		if smallDogEmpty.visible == true:
			bigDogSpotsBlack.visible = false
			bigDogSpotsBrown.visible = false
			bigDogSpotsCream.visible = false
			bigDogSpotsWhite.visible = false
			mediumDogSpotsBlack.visible = false
			mediumDogSpotsBrown.visible = false
			mediumDogSpotsCream.visible = false
			mediumDogSpotsWhite.visible = false
			smallDogSpotsBlack.visible = false
			smallDogSpotsBrown.visible = false
			smallDogSpotsCream.visible = false
			smallDogSpotsWhite.visible = true
