$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = 'MediaElch'
  url            = 'https://github.com/Komet/MediaElch/releases/download/v2.8.16/MediaElch_win_2.8.16_2022-03-13_git-9ae0f5bd.zip'
  checksum       = '1148100a5e53b9cc078c7ba0acce26a054d31c76edb8c52e2d682aa524fe6f86'
  checksumType   = 'sha256'
  unzipLocation  = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}

Install-ChocolateyZipPackage @packageArgs
