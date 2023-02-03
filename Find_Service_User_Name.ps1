$servers = @(   #Servers to check#
 ) foreach ($server in $servers){ 
Get-WmiObject win32_service | sort-object -property startname |where-object{$_.startname -ne "localservice" -and $_.startname -ne "Localsystem" -and $_.startname -ne "networkservice"}|  Select-Object -Property Name, startname |export-csv -Path C:\temp\$server.csv -Delimiter ';'
}