[CmdletBinding()]
param(
    [string]$ComputerName = $env:COMPUTERNAME
)

$system = Get-CimInstance -ClassName Win32_ComputerSystem -ComputerName $ComputerName
$operatingSystem = Get-CimInstance -ClassName Win32_OperatingSystem -ComputerName $ComputerName
$bios = Get-CimInstance -ClassName Win32_BIOS -ComputerName $ComputerName

[pscustomobject]@{
    ComputerName = $system.Name
    Manufacturer = $system.Manufacturer
    Model = $system.Model
    SerialNumber = $bios.SerialNumber
    OperatingSystem = $operatingSystem.Caption
    Version = $operatingSystem.Version
    LastBootTime = $operatingSystem.LastBootUpTime
    TotalMemoryGB = [math]::Round($system.TotalPhysicalMemory / 1GB, 2)
}
