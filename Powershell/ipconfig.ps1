Get-WmiObject -class Win32_NetworkAdapterConfiguration | 
Where-Object {$_.IPEnabled -eq 'True'} |
 Format-Table Description, Index, IPAddress,IPSubnet,DNSDomain, DNSHostname -autosize