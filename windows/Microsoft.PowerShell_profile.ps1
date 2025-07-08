$env:EDITOR = "code"
$env:PNPM_HOME = "D:\__tools\pnpm"
$env:PROTO_HOME = "D:\__tools\proto"
$env:PATH = @(
  (Join-Path $env:PROTO_HOME "shims")
  (Join-Path $env:PROTO_HOME "bin")
  $env:PNPM_HOME
  $env:PATH
) -join [IO.PATH]::PathSeparator;

if ($PWD.Drive.Name -ne "D") {
  Set-Location -Path "D:\"
}

function Update-Machine {
  winget upgrade -r
  proto upgrade
}

Set-Alias -Name open -Value explorer
Set-Alias -Name edit -Value $env:EDITOR
Set-Alias -Name u -Value Update-Machine
