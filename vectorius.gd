extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	
	var v = []
	var NUM_ELEMENTS = 100_000
	
	var start_time = OS.get_ticks_usec()
	
	for i in NUM_ELEMENTS:
		v.push_back(i)
	
	for i in NUM_ELEMENTS:
		v.pop_back()
	
	for i in NUM_ELEMENTS:
		v.push_back(i)
	
	var end_time = OS.get_ticks_usec()
	var total_time = end_time - start_time
	print("took %d usec (%d msec) for %d elements" % [total_time, total_time / 1000.0, NUM_ELEMENTS])
	# get_tree().quit()
