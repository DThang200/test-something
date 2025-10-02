Dim oShell, objWMIService, objProcess, colProcess, strComputer, processName,instances

strComputer = "."
instances = 0
processName = "cmd.exe"

Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colProcess = objWMIService.ExecQuery("Select * from Win32_Process")

For Each objProcess in colProcess
If objProcess.Name = processName Then instances = instances + 1        'Incrementing Running Instances
Next

Set oShell = WScript.CreateObject ("WScript.Shell")

Do While instances > 0
oShell.Run "taskkill /im cmd.exe", 0, True       'Killing one instance at a time
instances = instances - 1
Loop

WScript.Sleep 5000

Set shell = CreateObject("WScript.Shell")
oShell.Run "cmd /c call %USERPROFILE%\Desktop\dow-code\test-something\asset\delete-ld.bat", 1, True
oShell.Run "cmd /c start call %USERPROFILE%\Desktop\dow-code\run-auto-startup.bat", 1, False
oShell.Run "cmd /c cd /d %USERPROFILE%\Desktop\decode && start call %USERPROFILE%\Desktop\decode\autoRelaunch.bat", 1, False

