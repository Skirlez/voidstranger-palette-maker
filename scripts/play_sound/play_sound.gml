function play_sound(sound) {
	if global.enablesounds
		audio_play_sound(sound, 10, false)
}