Function Verb-Noun {
    [CmdletBinding()]
    Param(
        [parameter(valuefrompipeline=$true)]
        [String] $pipielineString,
        [parameter()]
        [String] $myString
    )

    Begin { "begin $pipielineString $myString" }
    Process { "process $pipielineString $myString" }
    End { "end $pipielineString $myString" }
}

Function Sum {
    [CmdletBinding()]
    Param(
        [parameter(valuefrompipeline=$true)]
        [int] $x
    )

    Begin { $total = 0 }
    Process { $total += $x }
    End { "total = $total" }
}

Function Get-DataFromUrl {
    [CmdletBinding()]
    Param(
        [String[]]$Url,
        [Switch]$ErrorLog,
        [String]$LogFile = 'C:\errorLog.txt'
    )
    Begin{
        If($ErrorLog) {
            Write-Verbose 'error log turned on'
        } else {
            Write-Verbose 'error log turned on'
        }

        Foreach($addressUrl in $Url) {
            Write-Verbose 'Calling $addressUrl'
            $request = Invoke-WebRequest -Uri $addressUrl -Method Get
            Write-Verbose $request.StatusCode
        }
    }
    Process{}
    End{}
}
