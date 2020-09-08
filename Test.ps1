Write-Host "I am from file"
New-Item -Name Build -ItemType Directory
New-Item -Name Build\PowerShell -ItemType Directory
New-Item -Name .\Build\PowerShell\Test.txt -ItemType File