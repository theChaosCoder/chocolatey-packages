$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/brechtsanders/pedeps/releases/download/0.1.10/pedeps-0.1.10-win32.zip'
$url64      = 'https://github.com/brechtsanders/pedeps/releases/download/0.1.10/pedeps-0.1.10-win64.zip'
$checksum32  = '3f071b9a689420611a2e94371eb787763a271413c39ab7d7d77813823eb3c368'
$checksum64  = 'ecc690e6435dc9ef3349a07612c2507fb1fe3ef7f53726dac8d1ed5411a1359e'



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
