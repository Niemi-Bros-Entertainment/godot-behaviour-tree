extends Task

# Only reports a failure

class_name UntilFail, "res://Submodules/godot-behaviour-tree/icons/until-fail.png"

func run():
	get_child(0).run()
	running()

# Ignore child success
func child_success():
	pass

func child_fail():
	success()
