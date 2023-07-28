extends Node

const SAVE_PATH = "user://save.cfg";

func save_highscore(best_time, best_size):
	var config = ConfigFile.new();
	config.set_value("Game", "Best Time", best_time);
	config.set_value("Game", "Size", best_size);
	config.save(SAVE_PATH);

func load_highscore():
	var best_time = 0;
	var best_size = 0;
	var config = ConfigFile.new();
	var error = config.load(SAVE_PATH);
	if error != OK: return null;
	best_time = config.get_value("Game", "Best Time")
	best_size = config.get_value("Game", "Size")
	return [best_time, best_size];
