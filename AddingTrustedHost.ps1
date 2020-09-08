$ERCSIPAddress = "192.168.20.27"
$isERCSIPAdded = $false
    #Check for TrustedHosts
    $trustedHost = (Get-Item WSMan:\localhost\Client\TrustedHosts).Value
    if($trustedHost -ne "*")
    {
        if($trustedHost -match ","){
            if($trustedHost.Split(',') -contains $ERCSIPAddress){
                $isERCSIPAdded = $true
                Write-host "$ERCSIPAddress is already added to trusted host"
            }
        }elseif($trustedHost -eq $ERCSIPAddress){
            $isERCSIPAdded = $true
            Write-host "$ERCSIPAddress is already added to trusted host"
        }

        if(!$isERCSIPAdded){
        Write-host "Adding ERCSIPAddress $ERCSIPAddress as trusted client to establish remote session."
        Set-Item WSMan:\localhost\Client\TrustedHosts -Value $ERCSIPAddress -Concatenate -Force
        }
    }
    else
    {
        Write-host "Trusted host is already set to '*'"
    }