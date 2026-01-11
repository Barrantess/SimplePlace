extends CharacterBody2D

var is_grabbed: bool = false
var tiempo_inicio: float = 0.0
@export var tiempo_total_segundos: float

func _process(delta):
	if is_grabbed:
		var mouse_pos = get_global_mouse_position()
		global_position = lerp(global_position, mouse_pos, 0.2)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed and is_visible_in_tree():
			iniciar_agarre()
		else:
			finalizar_agarre()

func iniciar_agarre():
	is_grabbed = true
	# Guardamos el tiempo actual en milisegundos
	tiempo_inicio = Time.get_ticks_msec()
	print("Objeto agarrado")

func finalizar_agarre():
	if is_grabbed: # Solo si realmente estaba agarrado
		is_grabbed = false
		# Calculamos la diferencia
		var tiempo_final = Time.get_ticks_msec()
		var tiempo_total_ms = tiempo_final - tiempo_inicio
		tiempo_total_segundos = tiempo_total_ms / 1000.0
		
		print("Tiempo total de agarre: ", tiempo_total_segundos, " segundos")
