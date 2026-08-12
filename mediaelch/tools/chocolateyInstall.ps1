$ErrorActionPreference = 'Stop'

$url      = ''
$checksum = ''

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = $url
  checksum       = $checksum
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
