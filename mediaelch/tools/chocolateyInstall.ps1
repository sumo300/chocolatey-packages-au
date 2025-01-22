$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.12.0/MediaElch_win_10_or_later_Qt6_2.12.0_2024-10-13_git-80324653.zip'
  checksum       = '73eab1c4f1db8767124ba162da6cc96c11e963a570bfe485ba0c95301f525793'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
