<#
.SYNOPSIS
Script that auto-opens lootbox on Rocket League.

.DESCRIPTION
This script uses the System.Windows.Forms.SendKeys class to simulate key presses in the Rocket League game. It opens the lootbox automatically by pressing the enter key, left arrow key, and enter key again. It then waits for 5 seconds before repeating the process.

.PARAMETER None
This script does not accept any parameters.

.EXAMPLE
./auto_open_rl.ps1
Runs the script to auto-open lootbox on Rocket League.

.NOTES
This script is for educational purposes only. Use at your own risk.
#>

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$wshell = New-Object -ComObject wscript.shell;
$wshell.AppActivate('Rocket League')
#repeat 36 times
$counter = 0

while($counter -lt 36){
    [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
    Start-Sleep -s 2
    [System.Windows.Forms.SendKeys]::SendWait("{LEFT}")
    Start-Sleep -s 2
    [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
    Start-Sleep -s 8
    [System.Windows.Forms.SendKeys]::SendWait("{ENTER}")
    Start-Sleep -s 2
    $counter++
}
