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

@onready var name_enrique: Sprite2D = $Enrique2
@onready var name_taco: Sprite2D = $Taco2
@onready var name_stella: Sprite2D = $Stella2


@export var size_selected: bool = false
@export var flat_selected: bool = false

#For selecting random dog
@export var possible_dogs: Array[String] = [
	"res://assets/park assets/Doggy/BigBlackBrownDoggy.png",
	"res://assets/park assets/Doggy/BigBlackCreamDoggy.png",
	"res://assets/park assets/Doggy/BigBlackDoggy.png",
	"res://assets/park assets/Doggy/BigBlackWhiteDoggy.png",
	"res://assets/park assets/Doggy/BigBrownBlackDoggy.png",
	"res://assets/park assets/Doggy/BigBrownCreamDoggy.png",
	"res://assets/park assets/Doggy/BigBrownDoggy.png",
	"res://assets/park assets/Doggy/BigBrownWhiteDoggy.png",
	"res://assets/park assets/Doggy/BigCreamBlackDoggy.png",
	"res://assets/park assets/Doggy/BigCreamBrownDoggy.png",
	"res://assets/park assets/Doggy/BigCreamDoggy.png",
	"res://assets/park assets/Doggy/BigCreamWhiteDoggy.png",
	"res://assets/park assets/Doggy/BigWhiteBlackDoggy.png",
	"res://assets/park assets/Doggy/BigWhiteBrownDoggy.png",
	"res://assets/park assets/Doggy/BigWhiteCreamDoggy.png",
	"res://assets/park assets/Doggy/BigWhiteDoggy.png",
	"res://assets/park assets/Doggy/MediumBlackBrownDoggy.png",
	"res://assets/park assets/Doggy/MediumBlackCreamDoggy.png",
	"res://assets/park assets/Doggy/MediumBlackDoggy.png",
	"res://assets/park assets/Doggy/MediumBlackWhiteDoggy.png",
	"res://assets/park assets/Doggy/MediumBrownBlackDoggy.png",
	"res://assets/park assets/Doggy/MediumBrownCreamDoggy.png",
	"res://assets/park assets/Doggy/MediumBrownDoggy.png",
	"res://assets/park assets/Doggy/MediumBrownWhiteDoggy.png",
	"res://assets/park assets/Doggy/MediumCreamBlackDoggy.png",
	"res://assets/park assets/Doggy/MediumCreamBrownDoggy.png",
	"res://assets/park assets/Doggy/MediumCreamDoggy.png",
	"res://assets/park assets/Doggy/MediumCreamWhiteDoggy.png",
	"res://assets/park assets/Doggy/MediumWhiteBlackDoggy.png",
	"res://assets/park assets/Doggy/MediumWhiteBrownDoggy.png",
	"res://assets/park assets/Doggy/MediumWhiteCreamDoggy.png",
	"res://assets/park assets/Doggy/MediumWhiteDoggy.png",
	"res://assets/park assets/Doggy/SmallBlackBrownDoggy.png",
	"res://assets/park assets/Doggy/SmallBlackCreamDoggy.png",
	"res://assets/park assets/Doggy/SmallBlackDoggy.png",
	"res://assets/park assets/Doggy/SmallBlackWhiteDoggy.png",
	"res://assets/park assets/Doggy/SmallBrownBlackDoggy.png",
	"res://assets/park assets/Doggy/SmallBrownCreamDoggy.png",
	"res://assets/park assets/Doggy/SmallBrownDoggy.png",
	"res://assets/park assets/Doggy/SmallBrownWhiteDoggy.png",
	"res://assets/park assets/Doggy/SmallCreamBlackDoggy.png",
	"res://assets/park assets/Doggy/SmallCreamBrownDoggy.png",
	"res://assets/park assets/Doggy/SmallCreamDoggy.png",
	"res://assets/park assets/Doggy/SmallCreamWhiteDoggy.png",
	"res://assets/park assets/Doggy/SmallWhiteBlackDoggy.png",
	"res://assets/park assets/Doggy/SmallWhiteBrownDoggy.png",
	"res://assets/park assets/Doggy/SmallWhiteCreamDoggy.png",
	"res://assets/park assets/Doggy/SmallWhiteDoggy.png"]
@export var possible_names: Array[String]=["Enrique", "Taco", "Stella"]
@export var random_dog: String
@export var random_name: String
@onready var dog: Sprite2D = $OldLady
@export var final_dog: String
@export var flat: String
@export var spots: String = "Empty"
@export var final_name: String

#Win and game over
@onready var police_dwin: Sprite2D = $PoliceD3
@onready var go_back: Button = $GoBack

@onready var sad_police: Sprite2D = $SadPolice
@onready var police_dlose: Sprite2D = $PoliceD2
@onready var try_again: Button = $TryAgain

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	callRandomDog()
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
	go_back.visible = false
	dog.visible = false
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
	flat_selected = false
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
	flat_selected = false
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
	flat_selected = false
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
	flat = "Black"
	if size_selected == true:
		if bigDogEmpty.visible == true:
			if spots == "Brown": final_dog = "BigBlackBrownDoggy"
			if spots == "Cream": final_dog = "BigBlackCreamDoggy"
			if spots == "White": final_dog = "BigBlackWhiteDoggy"
			else: final_dog = "BigBlackDoggy"
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
			if spots == "Brown": final_dog = "MediumBlackBrownDoggy"
			if spots == "Cream": final_dog = "MediumBlackCreamDoggy"
			if spots == "White": final_dog = "MediumBlackWhiteDoggy"
			else: final_dog = "MediumBlackDoggy"
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
			if spots == "Brown": final_dog = "SmallBlackBrownDoggy"
			if spots == "Cream": final_dog = "SmallBlackCreamDoggy"
			if spots == "White": final_dog = "SmallBlackWhiteDoggy"
			else: final_dog = "SmallBlackDoggy"
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
	flat = "Brown"
	if size_selected == true:
		if bigDogEmpty.visible == true:
			if spots == "Black": final_dog = "BigBrownBlackDoggy"
			if spots == "Cream": final_dog = "BigBrownCreamDoggy"
			if spots == "White": final_dog = "BigBrownWhiteDoggy"
			else: final_dog = "BigBrownDoggy"
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
			if spots == "Black": final_dog = "MediumBrownBlackDoggy"
			if spots == "Cream": final_dog = "MediumBrownCreamDoggy"
			if spots == "White": final_dog = "MediumBrownWhiteDoggy"
			else: final_dog = "MediumBrownDoggy"
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
			if spots == "Black": final_dog = "SmallBrownBlackDoggy"
			if spots == "Cream": final_dog = "SmallBrownCreamDoggy"
			if spots == "White": final_dog = "SmallBrownWhiteDoggy"
			else: final_dog = "SmallBrownDoggy"
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
	flat = "Cream"
	if size_selected == true:
		if bigDogEmpty.visible == true:
			if spots == "Black": final_dog = "BigCreamBlackDoggy"
			if spots == "Brown": final_dog = "BigCreamBrownDoggy"
			if spots == "White": final_dog = "BigCreamWhiteDoggy"
			else: final_dog = "BigCreamDoggy"
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
			if spots == "Black": final_dog = "MediumCreamBlackDoggy"
			if spots == "Brown": final_dog = "MediumCreamBrownDoggy"
			if spots == "White": final_dog = "MediumCreamWhiteDoggy"
			else: final_dog = "MediumCreamDoggy"
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
			if spots == "Black": final_dog = "SmallCreamBlackDoggy"
			if spots == "Brown": final_dog = "SmallCreamBrownDoggy"
			if spots == "White": final_dog = "SmallCreamWhiteDoggy"
			else: final_dog = "SmallCreamDoggy"
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
	flat = "White"
	if size_selected == true:
		if bigDogEmpty.visible == true:
			if spots == "Black": final_dog = "BigWhiteBlackDoggy"
			if spots == "Brown": final_dog = "BigWhiteBrownDoggy"
			if spots == "Cream": final_dog = "BigWhiteCreamDoggy"
			else: final_dog = "BigWhiteDoggy"
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
			if spots == "Black": final_dog = "MediumWhiteBlackDoggy"
			if spots == "Brown": final_dog = "MediumWhiteBrownDoggy"
			if spots == "Cream": final_dog = "MediumWhiteCreamDoggy"
			else: final_dog = "MediumWhiteDoggy"
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
			if spots == "Black": final_dog = "SmallWhiteBlackDoggy"
			if spots == "Brown": final_dog = "SmallWhiteBrownDoggy"
			if spots == "Cream": final_dog = "SmallWhiteCreamDoggy"
			else: final_dog = "SmallWhiteDoggy"
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
		spots = "Empty"
		if bigDogEmpty.visible:
			if flat == "Black": final_dog = "BigBlackDoggy"
			if flat == "Brown": final_dog = "BigBrownDoggy"
			if flat == "Cream": final_dog = "BigCreamDoggy"
			if flat == "White": final_dog = "BigWhiteDoggy"
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
			if flat == "Black": final_dog = "MediumBlackDoggy"
			if flat == "Brown": final_dog = "MediumBrownDoggy"
			if flat == "Cream": final_dog = "MediumCreamDoggy"
			if flat == "White": final_dog = "MediumWhiteDoggy"
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
			if flat == "Black": final_dog = "SmallBlackDoggy"
			if flat == "Brown": final_dog = "SmallBrownDoggy"
			if flat == "Cream": final_dog = "SmallCreamDoggy"
			if flat == "White": final_dog = "SmallWhiteDoggy"
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
		spots = "Black"
		if bigDogEmpty.visible:
			if flat == "Black": final_dog = "BigBlackDoggy"
			if flat == "Brown": final_dog = "BigBrownBlackDoggy"
			if flat == "Cream": final_dog = "BigCreamBlackDoggy"
			if flat == "White": final_dog = "BigWhiteBlackDoggy"
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
			if flat == "Black": final_dog = "MediumBlackDoggy"
			if flat == "Brown": final_dog = "MediumBrownBlackDoggy"
			if flat == "Cream": final_dog = "MediumCreamBlackDoggy"
			if flat == "White": final_dog = "MediumWhiteBlackDoggy"
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
			if flat == "Black": final_dog = "SmallBlackDoggy"
			if flat == "Brown": final_dog = "SmallBrownBlackDoggy"
			if flat == "Cream": final_dog = "SmallCreamBlackDoggy"
			if flat == "White": final_dog = "SmallWhiteBlackDoggy"
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
		spots = "Brown"
		if bigDogEmpty.visible:
			if flat == "Black": final_dog = "BigBlackBrownDoggy"
			if flat == "Brown": final_dog = "BigBrownDoggy"
			if flat == "Cream": final_dog = "BigCreamBrownDoggy"
			if flat == "White": final_dog = "BigWhiteBrownDoggy"
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
			if flat == "Black": final_dog = "MediumBlackBrownDoggy"
			if flat == "Brown": final_dog = "MediumBrownDoggy"
			if flat == "Cream": final_dog = "MediumCreamBrownDoggy"
			if flat == "White": final_dog = "MediumWhiteBrownDoggy"
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
			if flat == "Black": final_dog = "SmallBlackBrownDoggy"
			if flat == "Brown": final_dog = "SmallBrownDoggy"
			if flat == "Cream": final_dog = "SmallCreamBrownDoggy"
			if flat == "White": final_dog = "SmallWhiteBrownDoggy"
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
		spots = "Cream"
		if bigDogEmpty.visible:
			if flat == "Black": final_dog = "BigBlackCreamDoggy"
			if flat == "Brown": final_dog = "BigBrownCreamDoggy"
			if flat == "Cream": final_dog = "BigCreamDoggy"
			if flat == "White": final_dog = "BigWhiteCreamDoggy"
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
			if flat == "Black": final_dog = "MediumBlackCreamDoggy"
			if flat == "Brown": final_dog = "MediumBrownCreamDoggy"
			if flat == "Cream": final_dog = "MediumCreamDoggy"
			if flat == "White": final_dog = "MediumWhiteCreamDoggy"
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
			if flat == "Black": final_dog = "SmallBlackCreamDoggy"
			if flat == "Brown": final_dog = "SmallBrownCreamDoggy"
			if flat == "Cream": final_dog = "SmallCreamDoggy"
			if flat == "White": final_dog = "SmallWhiteCreamDoggy"
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
		spots = "White"
		if bigDogEmpty.visible:
			if flat == "Black": final_dog = "BigBlackWhiteDoggy"
			if flat == "Brown": final_dog = "BigBrownWhiteDoggy"
			if flat == "Cream": final_dog = "BigCreamWhiteDoggy"
			if flat == "White": final_dog = "BigWhiteDoggy"
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
			if flat == "Black": final_dog = "MediumBlackWhiteDoggy"
			if flat == "Brown": final_dog = "MediumBrownWhiteDoggy"
			if flat == "Cream": final_dog = "MediumCreamWhiteDoggy"
			if flat == "White": final_dog = "MediumWhiteDoggy"
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
			if flat == "Black": final_dog = "SmallBlackWhiteDoggy"
			if flat == "Brown": final_dog = "SmallBrownWhiteDoggy"
			if flat == "Cream": final_dog = "SmallCreamWhiteDoggy"
			if flat == "White": final_dog = "SmallWhiteDoggy"
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

func callEnrique():
	final_name = "Enrique"
	name_enrique.visible = true
	name_taco.visible = false
	name_stella.visible = false

func callTaco():
	final_name = "Taco"
	name_enrique.visible = false
	name_taco.visible = true
	name_stella.visible = false
	
func callStella():
	final_name = "Stella"
	name_enrique.visible = false
	name_taco.visible = false
	name_stella.visible = true

func callRandomDog():
	random_dog = possible_dogs.pick_random()
	random_name = possible_names.pick_random()
	var texture: Texture2D = load(random_dog)
	dog.texture = texture
	print(random_dog)
	print(random_name)

func callDone():
	var path = random_dog
	var actual_dog = path.get_file().get_basename()
	policeDialog.visible = false
	dog_gameBG.visible = false
	done.visible = false
	stella.visible = false
	taco.visible = false
	enrique.visible = false
	big_dog.visible = false
	medium_dog.visible = false
	small_dog.visible = false
	spotNone.visible = false
	spotBlack.visible = false
	spotWhite.visible = false
	spotBrown.visible = false
	spotCream.visible = false
	flatCream.visible = false
	flatBrown.visible = false
	flatWhite.visible = false
	flatBlack.visible = false
	if final_dog == actual_dog and final_name == random_name:
		police_dwin.visible = true
		go_back.visible = true
		dogBG.visible = false
	else:
		police_dlose.visible = true
		sad_police.visible = true
		try_again.visible = true

func callTryAgain():
	police_dlose.visible = false
	sad_police.visible = false
	try_again.visible = false
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

func callGoBack():
	get_tree().change_scene_to_file("res://menu.tscn")
