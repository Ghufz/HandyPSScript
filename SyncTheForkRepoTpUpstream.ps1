﻿param(
[Parameter(Mandatory=$false)]
[string] $RepoPath = $PSScriptRoot 
)



<#
https://digitaldrummerj.me/git-syncing-fork-with-original-repo/
Write-host "Add the origal repository as upstream"
$ git remote add upstream https://github.com/[Original Owner Username]/[Original Repository].git


#>
Write-host "Sync the fork repo"
Set-Location -Path $RepoPath

Write-host "Get the Remote "
git remote -v




Write-host "Pull the upstream"
git fetch upstream

Write-host "Check out master"
git checkout master

Write-host "Rebase the upstream/master to master"
git rebase upstream/master

Write-Host "Push to the master"
git push origin master