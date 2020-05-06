$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32      = 'https://github.com/brechtsanders/pedeps/releases/download/0.1.9/pedeps-0.1.9-win32.zip'
$url64      = 'https://github.com/brechtsanders/pedeps/releases/download/0.1.9/pedeps-0.1.9-win64.zip'
$checksum32  = 'f23517e580cd9f33bd309f9955c17d1140615d6123fdfbc67eac667da1a27c68'
$checksum64  = '63dcb21f20bb9ea87fc5a1a935ca4fd53f8f268eb76d5b4f86a7586f48b50908'



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
