$ErrorActionPreference = 'Stop'

$url32      = ''
$checksum32 = ''
$url64      = ''
$checksum64 = ''
$toolsDir   = '$(Split-Path -Parent $MyInvocation.MyCommand.Definition)'

$packageArgs = @{
  packageName    = 'PureText'
  url            = $url32
  url64          = $url64
  unzipLocation  = $toolsDir
  checksum       = $checksum32
  checksumType   = 'sha256'
  checksum64     = $checksum64
  checksum64Type = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs

$hr = "=" * 100
Write-Host $hr
Write-Host " Type `puretext` to run. PureText will run in your system tray."
Write-Host " It can be set to run at system startup in its settings. Enjoy."
Write-Host $hr
