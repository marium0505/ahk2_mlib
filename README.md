## Lib for Autohotkey v2 

Repository with some of my most used external Lib Functions/Classes for Autohotkey v2.

Examples are found in [Examples](https://github.com/marium0505/Lib/blob/main/Examples/JSON/JSON_Example.ahk) folder.

### JSON.ahk

[JSON library](https://www.autohotkey.com/boards/viewtopic.php?p=446749#p446749) based on [Native.ahk](https://www.autohotkey.com/boards/viewtopic.php?p=445069#p445069)

> All credits go to author cpp (thqby)  
> Github Profile: [thqby](https://github.com/thqby)  
> Autohotkey Forum Profile: [thqby](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=133937&sid=288b949250e308d97df072f5e58908ff)

With small modifications to JSON.ahk:

*   "aliases" for Dump and Load, which I"m more used to using (Lines 47-48):
    *   ``Dump(&obj, space := "`t")`` => stringify
    *   `Load(&str)` => parse
    *   Both take a ByRef &parameter and forward it normally to the original functions.
*   Making "\`t" (Tab) the default space indentation for Dump/stringify. (Line 46)
*   Moving the DLL files into a "DLL\\ahk-json" sub-folder and renaming the dll files into \[32|64\]bit-ahk-json.dll

#### See [JSON Example.ahk](https://github.com/marium0505/Lib/blob/main/Examples/JSON/JSON_Example.ahk)

### Native.ahk

See above.

### CNG.ahk

AutoHotkey wrapper for CNG (Cryptography API: Next Generation) by jNizM.

Github Project: [CNG](https://github.com/jNizM/AHK_CNG)  
Autohtkey Forum Thread: [CNG](https://www.autohotkey.com/boards/viewtopic.php?t=96117)

> All credits to author jNizM
> 
> Github Profile: [jNizM](https://github.com/jNizM)  
> Autohotkey Forum Profile: [jNizM](https://www.autohotkey.com/boards/memberlist.php?mode=viewprofile&u=75)
