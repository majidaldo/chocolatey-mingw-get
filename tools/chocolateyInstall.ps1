﻿$packageName = 'mingw-get'
$url='http://iweb.dl.sourceforge.net/project/mingw/Installer/mingw-get/mingw-get-0.6.2-beta-20131004-1/mingw-get-0.6.2-mingw32-beta-20131004-1-bin.zip'
$binRoot = Get-BinRoot
$installDir = Join-Path "$binRoot" 'mingw64'
Install-ChocolateyPath $installDir 'Machine'
Install-ChocolateyZipPackage "$packageName" $url $installDir
Write-Host "Dropping mingw-get profile.xml"
Copy-Item "$installDir\var\lib\mingw-get\data\defaults.xml" "$installDir\var\lib\mingw-get\data\profile.xml"
Update-SessionEnvironment
