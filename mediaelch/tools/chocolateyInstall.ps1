$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.8.14/MediaElch_win_2.8.14_2022-02-06_git-84e18bb2.zip'
  checksum       = '1f686c6bce1b263e444f0c24d7ae1af0c216a4fd4f4994d54a3633a574cf92b7'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
