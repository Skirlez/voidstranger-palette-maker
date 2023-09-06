if clicked() {
	play_sound(snd_button)
	var str = 
@"These are the instructions on how to import your palette into Void Stranger. In short:
You must put the string (the text) from the export button into Void Stranger's set_palette() script, using a tool like UndertaleModTool (https://github.com/krzys-h/UndertaleModTool/releases/latest) which I'll be explaining how to use here.
If you know how GML works and how to use UndertaleModTool, You could probably do this on your own manually without reading the rest here. If you don't: Keep reading.

Download UndertaleModTool from the link above.
Open Void Stranger's data.win file with UndertaleModTool. This is located inside of the game's folder, where the exe is located.
If you're on Steam you can right click the game and go to Manage > Browse Local Files and it will automatically open the folder for you.

From here there are two methods: I recommend the script method as it is faster and easier.
In case it doesn't work out, there is always the manual method.

SCRIPT METHOD:
This method uses a custom script I've written for UndertaleModTool to add the palette, overwriting a previous one. It is located inside the Palette Maker's install folder. (InsertVoidStrangerPalette.csx)

In UndertaleModTool, either at the top go to Scripts > Run other script... and select the .csx file or just drag it into the window.
Follow the instructions that pop up and after finishing, save and replace Void Stranger's data.win.
You are done! You should be able to select your palette in the menu.

MANUAL METHOD:
This method is self-explanatory.

Once you've opened the data.win in UndertaleModTool, you must use the search bar at the top to find the script set_palette().
Then just open the Scripts category in the menu on the left and it should be the only result there.
There is a big Switch statement inside set_palette() containing the colors for all the palettes, including unused ones.
You must copy the text from the export button to one of the cases here, replacing the colors of a previous palette.

Once you've done that, you can save the data.win to the game folder, replacing the original. 
(If you want you can also backup the original data.win, just so you don't have to redownload it if something goes wrong.)
From there just launch the game and you should be able to switch to your palette in the options menu!

NOTE: When the game updates, you will have to repeat this.

If you encounter any issues, you can issue an issue on the Github page:
https://github.com/Skirlez/voidstranger-palette-maker
I'd be happy to help.











balls
"




	clipboard_set_text(str)
	displaytexttimer = 240
	with (obj_importbutton)
		displaytexttimer = 0
	with (obj_exportbutton)
		displaytexttimer = 0
}