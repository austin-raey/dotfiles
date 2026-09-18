$env:EDITOR = "code"

(&mise activate pwsh --shims) | Out-String | Invoke-Expression

function __Update-Machine {
    winget upgrade -r --include-unknown
    store updates --apply
    mise self-update -y
    mise up -y
    vp upgrade
}

Set-Alias -Name u -Value __Update-Machine
Set-Alias -Name i -Value u
Set-Alias -Name edit -Value $env:EDITOR
Set-Alias -Name e -Value $env:EDITOR
