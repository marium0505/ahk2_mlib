#Requires AutoHotkey v2.0+
Persistent
#SingleInstance Force

MyObj := {}
MyObj.Setmylife := "On fire"
MapObj := Map("Hei", [1, 2, 3, 4, 10], "Stuff", { Hei: "På deg" }, "Obj", MyObj)
MapObj["ArrayWithMap"] := [ThisMap := Map("Hey", "Name1", "Hey2", "Name2"),ThisMap,ThisMap]
DumpedJSON := JSON.Dump(&MapObj)
ListVars  ; Use AutoHotkey's main window to display the formatted and dumped JSON 
WinWaitActive "ahk_class AutoHotkey"
DumpedJSON := StrReplace(DumpedJSON,"`n","`r`n") ; Fixes newlines to show properly in AutoHotkey's main window
ControlSetText(DumpedJSON, "Edit1")
WinWaitClose
ExitApp

#Include "%A_LineFile%\..\JSON.ahk"