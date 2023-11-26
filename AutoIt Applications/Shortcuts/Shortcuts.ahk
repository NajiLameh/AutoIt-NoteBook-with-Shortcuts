#!O::OpenShortcutFile()

OpenShortcutFile(){
Run,"C:\AutoIt Applications\Shortcuts"
}return

#!N::OpenCloseNoteBook()
OpenCloseNoteBook(){
	if WinExist("NoteBook"){
		WinClose,NoteBook
	}
	else{
		Run, "C:\AutoIt Applications\NoteBook\NoteBook.exe"
	}
}return

#!F::OpenDocuments()
OpenDocuments(){
	Run, "C:\Users\User\Documents"
}return

#!D::OpenDownloads()
OpenDownloads(){
	Run, "C:\Users\User\Downloads"
}return

#!S::OpenScreenShots()
OpenScreenShots(){
	Run, "C:\Users\User\Pictures\Screenshots"
}return

#!E::
	ExitApp
return

