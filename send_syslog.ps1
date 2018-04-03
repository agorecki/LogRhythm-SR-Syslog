param([string]$server = "null", [string]$event = "null", [string]$ohost = "null", [string]$ihost = "null", [string]$ouser = "null", [string]$iuser = "null", [string]$object = "null")
cd C:\LogRhythm\Posh-SYSLOG-master
Import-Module .\Posh-SYSLOG.psd1

Send-SyslogMessage -Server $server -Message "event:$event ohost:$ohost impactedhost:$ihost originuser:$ouser impacteduser:$iuser object:$object" -Severity Informational -Facility local0