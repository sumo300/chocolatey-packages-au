$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'PureText'
  url            = 'https://stevemiller.net/downloads/puretext_6.1_32-bit.zip'
  url64          = 'https://stevemiller.net/downloads/puretext_6.1_64-bit.zip'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  checksum       = '30B00DEB0C00DB95971F46F72FA24CA067113955551334DF8BD7E8F92F9AF7F6'
  checksumType   = 'sha256'
  checksum64     = 'A6E5607F99973D38245F0019F7178DD1A131ED8EBE255D310ADEA9CA8F35DC1C'
  checksum64Type = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$hr = "="*[System.Console]::WindowWidth
Write-Host $hr
Write-Host " Type `puretext` to run. PureText will run in your system tray."
Write-Host " It can be set to run at system startup in its settings. Enjoy."
Write-Host $hr
