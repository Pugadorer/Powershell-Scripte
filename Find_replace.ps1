$Dateipfadtest = Test-Path $Dateipfad
$Dateipfad = "C:\temp\" + $prog.ToString()
$prog = "test.txt"
$neu = "I:\Working\Mischa\Test2.txt"
$progneu = Split-Path "\\server\share\test.txt" -leaf 

if($Dateipfadtest -eq "True")
{
    Remove-Item -Path $Dateipfad
    Copy-item "\\Server\Share\test.txt" -Destination "C:\temp"
    write-host "Datei" $prog "ersetzt durch" $progneu 
}
else {

Write-host $prog + "ist nicht auf" $env:computername.ToString( )
                }