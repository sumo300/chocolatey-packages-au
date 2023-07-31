$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.10.4/MediaElch_win_10_or_later_Qt6_2.10.4_2023-07-30_git-0722e4ee.zip'
  checksum       = '631865147f5b20f43a90f597b4c540338d9cf5938a729e185246879957932cc3'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
