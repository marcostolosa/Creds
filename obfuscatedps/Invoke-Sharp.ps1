function Invoke-Sharp{
    param(
        [String[]]
        $CollectionMethod = [string[]] @($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('RABlAGYAYQB1AGwAdAA=')))),
		[Switch]
        $Stealth,
        [String]
        $Domain,
		[Switch]
        $WindowsOnly,
		[String]
        $ComputerFile,
		[ValidateScript({ Test-Path -Path $_ })]
        [String]
        $OutputDirectory = $(gl),
		[ValidateNotNullOrEmpty()]
        [String]
        $OutputPrefix,
		[Switch]
        $PrettyJson,
		[String]
        $CacheFileName,
		[Switch]
        $RandomizeFilenames,
		[String]
        $ZipFilename,
		[Switch]
        $NoSaveCache,
		[Switch]
        $EncryptZip,
		[Switch]
        $InvalidateCache,
        [String]
        $LdapFilter,
		[string]
        $DomainController,
		[int]
        $LdapPort,
        [Switch]
        $SecureLdap,
		[Switch]
        $DisableKerbSigning,
		[String]
        $LdapUsername,
        [String]
        $LdapPassword,
		[Switch]
        $SkipPortScan,
		[ValidateRange(50,5000)]
        [int]
        $PortScanTimeout = 2000,
        [Switch]
        $ExcludeDomainControllers,
		[ValidateRange(0,100)]
        [int]
        $Jitter,
        [int]
        $Throttle,
		[String]
        $OverrideUsername,
		[Switch]
		$NoRegistryLoggedOn,
		[Switch]
		$DumpComputerStatus,
		[String]
		$RealDNSName,
		[Switch]
		$CollectAllProperties,
		[ValidateRange(500,60000)]
        [int]
        $StatusInterval,
		[Switch]
		$Loop,
		[String]
		$LoopDuration,
		[String]
		$LoopInterval
    )
    ${00100000100110100} = New-Object System.Collections.Generic.List[System.Object]
    ${00100000100110100}.Add("-c")
    foreach (${01110000100011000} in $CollectionMethod){
        ${00100000100110100}.Add(${01110000100011000});
    }
    if ($Domain){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEQAbwBtAGEAaQBuAA=='))));
        ${00100000100110100}.Add($Domain);
    }
    if ($Stealth){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFMAdABlAGEAbAB0AGgA'))))
    }
	if ($WindowsOnly){
		${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFcAaQBuAGQAbwB3AHMATwBuAGwAeQA='))))
	}
	if ($ComputerFile){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEMAbwBtAHAAdQB0AGUAcgBGAGkAbABlAA=='))));
        ${00100000100110100}.Add($ComputerFile);
    }
	if ($OutputDirectory){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAE8AdQB0AHAAdQB0AEQAaQByAGUAYwB0AG8AcgB5AA=='))));
        ${00100000100110100}.Add($OutputDirectory);
    }
    if ($OutputPrefix){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAE8AdQB0AHAAdQB0AFAAcgBlAGYAaQB4AA=='))));
        ${00100000100110100}.Add($OutputPrefix);
    }
	if ($PrettyJson){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFAAcgBlAHQAdAB5AEoAcwBvAG4A'))));
    }
	if ($CacheFileName){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEMAYQBjAGgAZQBGAGkAbABlAE4AYQBtAGUA'))));
        ${00100000100110100}.Add($CacheFileName);
    }
	 if ($RandomFilenames){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFIAYQBuAGQAbwBtAGkAegBlAEYAaQBsAGUAbgBhAG0AZQBzAA=='))));
    }
	if ($ZipFileName){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFoAaQBwAEYAaQBsAGUATgBhAG0AZQA='))));
        ${00100000100110100}.Add($ZipFileName);
    }
	if ($NoSaveCache){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAE4AbwBTAGEAdgBlAEMAYQBjAGgAZQA='))));
    }
	if ($EncryptZip){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEUAbgBjAHIAeQBwAHQAWgBpAHAA'))));
    }
	if ($NoZip){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAE4AbwBaAGkAcAA='))));
    }
	if ($InvalidateCache){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEkAbgB2AGEAbABpAGQAYQB0AGUAQwBhAGMAaABlAA=='))));
    }
	if ($LdapFilter){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEwAZABhAHAARgBpAGwAdABlAHIA'))));
        ${00100000100110100}.Add($LdapFilter);
    }
	if ($DomainController){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEQAbwBtAGEAaQBuAEMAbwBuAHQAcgBvAGwAbABlAHIA'))));
        ${00100000100110100}.Add($DomainController);
    }
    if ($LdapPort){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEwAZABhAHAAUABvAHIAdAA='))));
        ${00100000100110100}.Add($LdapPort);
    }
    if ($SecureLdap){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFMAZQBjAHUAcgBlAEwAZABhAHAA'))));
    }
	if ($DisableKerberosSigning){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEQAaQBzAGEAYgBsAGUASwBlAHIAYgBlAHIAbwBzAFMAaQBnAG4AaQBuAGcA'))));
    }
	if ($LdapUsername){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEwAZABhAHAAVQBzAGUAcgBuAGEAbQBlAA=='))));
        ${00100000100110100}.Add($LdapUsername);
    }
    if ($LdapPassword){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEwAZABhAHAAUABhAHMAcwB3AG8AcgBkAA=='))));
        ${00100000100110100}.Add($LdapPassword);
    }
	if ($SkipPortScan){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFMAawBpAHAAUABvAHIAdABTAGMAYQBuAA=='))));
    }
	if ($PortScanTimeout){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFAAbwByAHQAUwBjAGEAbgBUAGkAbQBlAG8AdQB0AA=='))))
        ${00100000100110100}.Add($PortScanTimeout)
    }
    if ($ExcludeDomainControllers){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEUAeABjAGwAdQBkAGUARABvAG0AYQBpAG4AQwBvAG4AdAByAG8AbABsAGUAcgBzAA=='))))
    }
	if ($Throttle){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFQAaAByAG8AdAB0AGwAZQA='))));
        ${00100000100110100}.Add($Throttle);
    }
    if ($Jitter){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEoAaQB0AHQAZQByAA=='))));
        ${00100000100110100}.Add($Jitter);
    }
	if ($OverrideUserName){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAE8AdgBlAHIAcgBpAGQAZQBVAHMAZQByAE4AYQBtAGUA'))))
        ${00100000100110100}.Add($OverrideUsername)
    }
	if ($NoRegistryLoggedOn){
		${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAE4AbwBSAGUAZwBpAHMAdAByAHkATABvAGcAZwBlAGQATwBuAA=='))))
	}
	if ($DumpComputerStatus){
		${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEQAdQBtAHAAQwBvAG0AcAB1AHQAZQByAFMAdABhAHQAdQBzAA=='))))
	}
	if ($RealDNSName){
		${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFIAZQBhAGwARABOAFMATgBhAG0AZQA='))))
		${00100000100110100}.Add($RealDNSName)
	}
	if ($CollectAllProperties){
		${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEMAbwBsAGwAZQBjAHQAQQBsAGwAUAByAG8AcABlAHIAdABpAGUAcwA='))))
	}
	if ($StatusInterval){
        ${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAFMAdABhAHQAdQBzAEkAbgB0AGUAcgB2AGEAbAA='))))
        ${00100000100110100}.Add($StatusInterval)
    }
	if ($Loop){
		${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEwAbwBvAHAA'))))
	}
	if ($LoopDuration){
		${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEwAbwBvAHAARAB1AHIAYQB0AGkAbwBuAA=='))))
		${00100000100110100}.Add($LoopDuration)
	}
	if ($LoopInterval){
		${00100000100110100}.Add($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('LQAtAEwAbwBvAHAASQBuAHQAZQByAHYAYQBsAA=='))))
		${00100000100110100}.Add($LoopInterval)
	}
    ${00011010100001011} = [string[]]${00100000100110100}.ToArray()
	${01110010101000001} = New-Object IO.Compression.DeflateStream([IO.MemoryStream][Convert]::FromBase64String(${10110101100101111}),[IO.Compression.CompressionMode]::Decompress)
	${01110001000110010} = New-Object Byte[](832000)
	${01110010101000001}.Read(${01110001000110010}, 0, 832000) | Out-Null
	${10000101100110101} = [Reflection.Assembly]::Load(${01110001000110010})
	${01100101011010100} = [Reflection.BindingFlags] $([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UAB1AGIAbABpAGMALABTAHQAYQB0AGkAYwA=')))
	${01101000110001111} = @()
	${10000101100110101}.GetType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QwBvAHMAdAB1AHIAYQAuAEEAcwBzAGUAbQBiAGwAeQBMAG8AYQBkAGUAcgA='))), $false).GetMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQB0AHQAYQBjAGgA'))), ${01100101011010100}).Invoke($Null, @())
	${10000101100110101}.GetType($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('UwBoAGEAcgBwAEgAbwB1AG4AZAAzAC4AUwBoAGEAcgBwAEgAbwB1AG4AZAA=')))).GetMethod($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('SQBuAHYAbwBrAGUAUwBoAGEAcgBwAEgAbwB1AG4AZAA=')))).Invoke($Null, @(,${00011010100001011}))
}