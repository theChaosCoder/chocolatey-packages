$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/brechtsanders/pedeps/releases/download/0.1.6/pedeps-0.1.6-win32.zip'
$url64      = 'https://github.com/brechtsanders/pedeps/releases/download/0.1.6/pedeps-0.1.6-win64.zip'
$checksum32  = '6fc9ffce94d64d91f52ed718e4004e614722c95445d85a0ac232e46f1cd7d2ed'
$checksum64  = '16f80b8a05ee6e066a7077db6b42a947e761f5d99a3a248dcf6393c34a658c6b'



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
