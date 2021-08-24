[uint16]$FIRST_NUM = Read-Host -Prompt "Please enter a number"
[uint16]$SECOND_NUM = Read-Host -Prompt "Please enter a second number"
"The Results of the operations using your numbers!" |Out-File .\Results.txt
"Addition=$FIRST_NUM + $SECOND_NUM "|Add-Content .\Results.txt
$FIRST_NUM + $SECOND_NUM |Add-Content .\Results.txt 
"Subtraction = $FIRST_NUM - $SECOND_NUM"|Add-Content .\Results.txt 
$FIRST_NUM - $SECOND_NUM |Add-Content .\Results.txt 
"Multiplication= $FIRST_NUM * $SECOND_NUM"|Add-Content .\Results.txt 
$FIRST_NUM * $SECOND_NUM |Add-Content .\Results.txt
"Division= $FIRST_NUM / $SECOND_NUM"|Add-Content .\Results.txt 
try
{
	$FIRST_NUM / $SECOND_NUM |Add-Content .\Results.txt
}
catch
{
	"Oops, Zero Division Error" |Add-Content .\Results.txt
}

Get-Content -Path .\Results.txt

