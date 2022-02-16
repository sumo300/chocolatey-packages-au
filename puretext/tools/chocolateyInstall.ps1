$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'PureText'
  url            = 'https://stevemiller.net/downloads/puretext_6.2_32-bit.zip'
  url64          = 'https://stevemiller.net/downloads/puretext_6.2_64-bit.zip'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  checksum       = '947061009231189CEAD7A281AFAFAB0F7E20F2D4F1F5BE99CF5C7DC991AEF379'
  checksumType   = 'sha256'
  checksum64     = '678E8BB64A39DC1FAEF83081FBDB79D6C6C62FAD4FFA29BC4DFA824A2D8DFC64'
  checksum64Type = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$hr = "="*[System.Console]::WindowWidth
Write-Host $hr
Write-Host " Type `puretext` to run. PureText will run in your system tray."
Write-Host " It can be set to run at system startup in its settings. Enjoy."
Write-Host $hr
