$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/brechtsanders/pedeps/releases/download/0.1.5/pedeps-0.1.5-win32.zip'
$url64      = 'https://github.com/brechtsanders/pedeps/releases/download/0.1.5/pedeps-0.1.5-win64.zip'
$checksum32  = 'f61b708a27e834dc70009854a56430a7e49062f67e91d5f8bb3fe880b243e2ad'
$checksum64  = '71ac500464ef6a06763ee5cda74c2b39504d4933267a34b8318be723a2e0f6fd'



$packageArgs = @{
  packageName   = 'pedeps'
  unzipLocation = $toolsDir
  url           = $url32
  url64bit      = $url64

  softwareName  = 'pedeps'
  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  SpecificFolder= 'bin'
}

Install-ChocolateyZipPackage @packageArgs
