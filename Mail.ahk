!a::
MsgBox Checking if your credentials exist.
If FileExist("D:\Temp\mailcredentials.txt"){
    MsgBox, Your credentials exist.
	}
If !FileExist("D:\Temp\mailcredentials.txt"){
    MsgBox, Your credentials do not exist and creating your credentials file.
	FileCreateDir, D:\Temp
	InputBox, UserMail, MailID, Please enter your mailID., , 240, 180
	InputBox, UserPass, MailPass, Please enter your password for your mailID.,hide , 240, 180
	FileAppend, %UserMail%`n, D:\Temp\mailcredentials.txt
	FileAppend, %UserPass%, D:\Temp\mailcredentials.txt
	}
return

!m::
If FileExist("D:\Temp\mailcredentials.txt"){
    MsgBox, Your credentials exist press ok to fill your mailID.
	FileReadLine, MailID,  D:\Temp\mailcredentials.txt, 1
	send %MailID%
	}
	else{
	MsgBox, Your credentials does not exist please press alt + a to create your credentials.
	}
return

!p::
If FileExist("D:\Temp\mailcredentials.txt"){
    MsgBox, Your credentials exist press ok to fill your Password.
	FileReadLine, MailPass,  D:\Temp\mailcredentials.txt, 2
	send %MailPass%
	}
	else{
	MsgBox, Your credentials does not exist please press alt + a to create your credentials.
	}
return
