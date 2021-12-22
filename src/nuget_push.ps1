$ErrorActionPreference = "Stop" 

$apiKey = 'oy2ofrbmrbl3gm2gtduqn5yveiirpmjefajrtg7jt6ofla'
$coreOutputDir = 'c:\Projects\_Projects\DirectShowSDK\MediaFoundationNet\src\bin\Release\'
$coreNuGet = Get-ChildItem -Path $coreOutputDir -Include '*.nupkg' -Recurse -ErrorAction SilentlyContinue -Force

&nuget push ($coreNuGet.FullName) -Source https://api.nuget.org/v3/index.json -Timeout 600 -apiKey $apiKey

Write-Host -NoNewLine 'Press any key to continue...'
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')
