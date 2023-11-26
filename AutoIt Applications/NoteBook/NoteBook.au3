#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <StaticConstants.au3>
#include <EditConstants.au3>
#include <Date.au3>

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("NoteBook", 522, 583, 1010, 208)
GUISetBkColor(0x000000)
$Label1 = GUICtrlCreateLabel("Notes", 0, 0, 522, 20, $SS_CENTER)
GUICtrlSetFont(-1, 14, 800, 2, "Comic Sans MS")
GUICtrlSetColor(-1, 0xFFFFFF)
$Edit1 = GUICtrlCreateEdit("", 8, 30, 505, 545,BitOR($ES_AUTOVSCROLL,$ES_WANTRETURN,$WS_VSCROLL))
GUICtrlSetData(-1, "")
GUICtrlSetFont(-1, 11, 400, 2, "Comic Sans MS")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

Global $FilePath = "C:\AutoIt Applications\NoteBook\Notes.txt"

$File = FileOpen($FilePath,0);
$DataOut = FileRead($File);
$date = _Date_Time_GetLocalTime( );
$dateString = _Date_Time_SystemTimeToDateTimeStr($date);
$EditContent = $DataOut & @CRLF & @CRLF & $dateString & @CRLF;
GUICtrlSetData($Edit1,$EditContent);

While 1
	Sleep(100)
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			$DataIn = GUICtrlRead($Edit1,0)
			if $DataIn = $EditContent Then
				$File = FileOpen($FilePath,2)
				FileWrite($File,$DataOut)
			Else
				$File = FileOpen($FilePath,2)
				FileWrite($File,$DataIn)
			EndIf
			Exit
	EndSwitch
WEnd





