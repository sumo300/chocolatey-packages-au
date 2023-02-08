$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.10.0/MediaElch_win_10_or_later_Qt6_2.10.0_2023-02-05_git-960303af.zip'
  checksum       = 'c7f9b539527e59dbfa7a4a88621b14c85a6860d5b63646787e6e976eb7c787af'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
