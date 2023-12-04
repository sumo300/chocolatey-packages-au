$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.10.6/MediaElch_win_10_or_later_Qt6_2.10.6_2023-12-03_git-6121419e.zip'
  checksum       = '0c6061e1768867729efbf3fd368320886898fc50d42b7bbf66fa172e274b4bb7'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
