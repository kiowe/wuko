extends Node

#const SAVEFILE = "user://SAVEFILE.save"

#var game_data = {}

#func _ready():
	#load_data()

#func load_data():
	#var file: FileAccess = FileAccess.open(SAVEFILE, FileAccess.READ)
	#if not file.file_exists(SAVEFILE):
		#game_data = {
			#"fullscreen_on": false,
			#"master_vol": 100,
			#"music_vol": 30,
			#"sfx_vol": 70,
		#}
		#save_data()
	#file.open(SAVEFILE, FileAccess.READ)
	#game_data = file.get_var()
	#file.close()

#func save_data():
	#var file = FileAccess.open(SAVEFILE, FileAccess.WRITE)
	#file.store_var(game_data)
	#file.close()
