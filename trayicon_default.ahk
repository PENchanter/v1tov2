#Requires AutoHotkey v2.0-

;	REF: https://www.autohotkey.com/docs/v2/lib/Array.htm
;	REF: https://www.autohotkey.com/docs/v2/lib/LoopParse.htm

IconVar := "v_IconFile,v_IconResource,v_IconDefault,v_IconNumber,v_IconSection,v_IconKey"
IconVars := []

Loop Parse, IconVar, ",|;"
	{
		IconVars.Push(A_LoopField)
	}
; Msgbox(IconVars[5])

; Loop IconVars.Length
Loop Parse IconVars[]
	LowerCase := StrLower(A_LoopField)	; StrLower() function missing
	If (InStr(LowerCase, "default")) {
			MsgBox("Default found!")
; 			do something
	}

ExitApp()

IconVarLabels := "IconFile,IconResource,IconDefault,IconNumber,IconSection,IconKey"
IconVars1 := []
IconVars2 := []
Loop Parse, IconVarLabels, ",|;"
	{
		IconVars.Push(A_LoopField)
	}

/*
Now, how do I *test* each {IconVars1[]} array object for "default" string? Yes, lower-case comparison is wanted, not "efault". 

Then, `If` a match is found, how to assign a second array {IconVars2[#]} (at the same position) with a *default* value of my choosing?

The result would be used something like this:  
`MsgBox(IconVars1[*Field*] " = " IconVars2[*Value*])`

OUTPUT: __ IconDefault = shell32.dll, icon # __
*/
