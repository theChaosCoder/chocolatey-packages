$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/brechtsanders/pedeps/releases/download/0.1.7/pedeps-0.1.7-win32.zip'
$url64      = 'https://github.com/brechtsanders/pedeps/releases/download/0.1.7/pedeps-0.1.7-win64.zip'
$checksum32  = '503d172b69cef6af59133ba9bd2f1e04327b542e4497098ee3d86f5b36129970'
$checksum64  = 'ff04278bd6207c8b5c70dc9db780cac2102bf2ac34b8c76c6e9c01d53f0ebcb5'



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
