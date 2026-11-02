[CmdletBinding()]
param(
    [Parameter(Mandatory)]
    [string[]]$Name,
    [string]$ComputerName = $env:COMPUTERNAME
)

Get-Service -Name $Name -ComputerName $ComputerName -ErrorAction Stop |
    Select-Object Name, DisplayName, Status, StartType
