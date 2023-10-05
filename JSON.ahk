#Requires AutoHotkey v2.0+
/*
; JSON library for v2, written by cpp
; https://www.autohotkey.com/boards/viewtopic.php?p=446749#p446749

; Based on Native.ahk, also by cpp
; https://www.autohotkey.com/boards/viewtopic.php?p=445069#p445069

; With a few, small modifcations:
	-	adding "aliases" for Dump and Load which I"m more used to using:
		*	Dump => stringify
		*	Load => parse
	-	Making "`t" (Tab) default space indentation for Dump/stringify.
	-   Moving the DLL files into "DLL\ahk-json" folder and renaming the dll files into [32|64]bit-ahk-json.dll
*/

class JSON {
	static __New() {
		WindowsBit := A_PtrSize * 8 ; 64 or 32 Bit system
		Native.LoadModule(A_LineFile "\..\DLL\ahk-json\" WindowsBit "bit-ahk-json.dll", ["JSON"])
		this.DefineProp("true", { value: 1 })
		this.DefineProp("false", { value: 0 })
		this.DefineProp("null", { value: "" })
	}
	static Parse(str) => Map() | Array()
	static Stringify(obj, space := "`t") => ""
	static Load(&str) => this.Parse(str)
	static Dump(&obj, space := "`t") => this.Stringify(obj, space)
}

#Include "%A_LineFile%\..\Native.ahk"