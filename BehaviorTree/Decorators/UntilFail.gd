extends Task

class_name UntilFail

func run():
	running()

func _process(delta):
	if status == RUNNING:
		get_child(0).run()
	return delta

func child_fail():
	success()