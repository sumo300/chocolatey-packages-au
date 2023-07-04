$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.10.2/MediaElch_win_10_or_later_Qt6_2.10.2_2023-07-02_git-6d1e5321.zip'
  checksum       = 'd3d46b90d0f39492fe1072b07171bd40997403fc5a8af0fb0794592f07f8a244'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
