Add-WindowsCapability -Online -Name "Rsat.WSUS.Tools~~~~0.0.1.0"
Invoke-WebRequest -Uri "https://patchmypc.com/msi" -OutFile "PatchMyPC-Publishing-Service.msi"
Start-Process msiexec.exe -argumentlist "/i PatchMyPC-Publishing-Service.msi /quiet INTUNEONLYMODE=`"1`""
