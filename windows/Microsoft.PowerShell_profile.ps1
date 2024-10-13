$env:PNPM_HOME = 'D:\__tools\pnpm'
$env:PROTO_HOME = 'D:\__tools\proto'
$env:PATH = @(
  (Join-Path $env:PROTO_HOME "shims")
  (Join-Path $env:PROTO_HOME "bin")
  $env:PATH
) -join [IO.PATH]::PathSeparator;

if ($PWD.Drive.Name -ne 'D') {
  Set-Location -Path 'D:\'
}
