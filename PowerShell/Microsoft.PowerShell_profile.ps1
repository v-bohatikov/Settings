Import-Module $PSScriptRoot\ps-local.psm1
Import-Module $PSScriptRoot\ps-default.psm1
Import-Module posh-git

function Set-PoshGitStatus {
    $global:GitStatus = Get-GitStatus
    $env:POSH_GIT_STRING = Write-GitStatus -Status $global:GitStatus
}

oh-my-posh init pwsh --config C:\Users\bohatikovv\agnosterplus.omp.json | Invoke-Expression
New-Alias -Name 'Set-PoshContext' -Value 'Set-PoshGitStatus' -Scope Global -Force