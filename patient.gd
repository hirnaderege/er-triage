extends ColorRect

var health: float = 100.0
var drainRate: float = 10.0 # health lost per second

@onready var bar: ProgressBar = $ProgressBar

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	health -= drainRate * delta
	health = max(health, 0.0)
	bar.value = health
	if health <= 0.0:
		color = Color.GRAY
