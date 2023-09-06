// Based off of the Built-in UMT script "FindAndReplace.csx"
using System.Text;
using System;
using System.IO;
using System.Threading;
using System.Threading.Tasks;

EnsureDataLoaded();

if (Data?.GeneralInfo?.DisplayName?.Content.ToLower() != "void stranger")
{
    ScriptError("Error 0: This is not Void Stranger's data.win. What did you think was gonna happen?");
    return;
}

String palette = SimpleTextInput("Text input box", "Enter the output from Void Stranger palette maker, including only what's between the start mark and end mark.", "", true);
ScriptMessage("You will now be asked to enter the palette's name you'd like to replace. All palette names can be viewed from the palette maker's options menu.");
String name = SimpleTextInput("Text input box", "Enter the name of the palette you'd like to replace", "", false).Replace("\"", "");
SyncBinding("Strings, Variables, Functions", true);
var success = false;
await Task.Run(() => {
	UndertaleCode code = Data.Code.ByName("gml_GlobalScript_set_palette");
	var txt = GetDecompiledText(code);
	
	// Get start and end of the specific palette switch case
	var startPos = txt.IndexOf("palet_name = \"" + name + "\"");
	if (startPos == -1) {
		ScriptError("Error 1: Could not locate the palette you wanted to replace!");
		return;
	}
	startPos = txt.IndexOf("colarray", startPos);
	
	var endPos = txt.IndexOf("break", startPos);
	if (endPos == -1) // Must be the default case
		endPos = txt.IndexOf("}", startPos) - 1;
	
	var oldPalette = txt.Substring(startPos, endPos - startPos);
	ReplaceTextInGML(code, oldPalette, palette);
	success = true;
});
DisableAllSyncBindings();
if (success == true)
	ScriptMessage("Palette replaced successfully!");