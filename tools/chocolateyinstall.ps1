$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  fileType      = 'EXE'
  url           = 'https://download.microsoft.com/download/1/7/6/176909B0-50F2-4DF3-B29B-830A17EA7E38/CPDK_RELEASE_UPDATE/cpdksetup.exe'
  softwareName  = 'cryptographic-provider-development-kit*'
  checksum      = '76d6f7580fce9bb1045b5f0871718342443ec5d99c316489ef8c7bc83d4dd6ed'
  checksumType  = 'sha256'
  silentArgs    = "/q /norestart /features + /l `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).log`""
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs