// Based off of the Built-in UMT script "FindAndReplace.csx"
using System.Text;
using System;
using System.IO;
using System.Threading;
using System.Threading.Tasks;

EnsureDataLoaded();

if (Data.GeneralInfo.DisplayName.Content.ToLower() != "void stranger")
{
    ScriptError("Error 0: This is not Void Stranger's data.win. What did you think was gonna happen?");
    return;
}

String palette = SimpleTextInput("Text input box", "Enter the output from Void Stranger palette maker, including only what's between the start mark and end mark.", "", true);

// in the newest update, colarray[4], which was previously one of the colors, does nothing now
// and instead, colarray[3], which did nothing before, corresponds to that color
// the tool now just exports that color to both 3 and 4, but we need to do something about older palettes
// an old palette will have colarray[3] equal to 16777215, and colarray[4] to a different color
// if we find this case, we copy colarray 4 to 3

// in the case where the palette is new and colarray[3] happens to be white, colarray[4] will also be white,
// so nothing changes

int potential3Index = palette.IndexOf("colarray[3] = 16777215");
int potential4Index = palette.IndexOf("colarray[4]");
if (potential3Index != -1 && potential4Index != -1) {
	palette = palette.Replace("break", "");
	palette += "\n"
		+ "colarray[3] = colarray[4]\n"
		+ "break";
}
palette += "\n";


ScriptMessage("You will now be asked to enter the palette's name you'd like to replace. All palette names can be viewed from the palette maker's options menu.");
String name = SimpleTextInput("Text input box", "Enter the name of the palette you'd like to replace", "", false).Replace("\"", "");
SyncBinding("Strings, Variables, Functions", true);



UndertaleCode code = Data.Code.ByName("gml_GlobalScript_set_palette");
var txt = GetDecompiledText(code);

// Get start and end of the specific palette switch case
int startPos = txt.IndexOf("palet_name = \"" + name + "\"");
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
DisableAllSyncBindings();
ScriptMessage("Palette replaced successfully!");