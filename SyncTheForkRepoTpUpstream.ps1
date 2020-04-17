param(
[Parameter(Mandatory=$false)]
[string] $RepoPath = $PSScriptRoot 
)

Write-host "Sync the fork repo"
Set-Location -Path $RepoPath

Write-host "Get the Remote "
git remote -v

Write-host "Pull the upstream"
git fetch upstream

Write-host "Check out master"
git checkout master

Write-host "Merge the upstream/master to master"
git merge upstream/master

Write-Host "Push to the master"
git push