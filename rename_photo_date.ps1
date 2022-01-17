$shell = New-Object -ComObject shell.application
$ukCulture = [Globalization.CultureInfo]'en-GB'
Get-ChildItem | ForEach{
$folder = $shell.NameSpace($_.DirectoryName)
$RawDate = ($folder.GetDetailsOf($folder.ParseName($_.Name),12) -Replace "[^\w /:]")
$datetime = [DateTime]::Parse($RawDate,$ukCulture)
$DateTaken = $datetime.ToString("yyyy-MM-dd-")
Rename-Item $_.FullName ($DateTaken + $_.Name)}