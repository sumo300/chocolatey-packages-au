$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.8.18/MediaElch_win_2.8.18_2022-10-28_git-146c4b77.zip'
  checksum       = '86538cf16cff2a5a826baaaaf5b8ae9254cbb0deb4491a3880781db9289c58d0'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
