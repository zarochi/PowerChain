<#
.DESCRIPTION
    Converts Block parameters into a Block Hash
.EXAMPLE
    convertto-blockHash -Index 0 -prevHash "12345" -time "19700101000000" -data "Genesis Block"
#>

function ConvertTo-BlockHash([Int64]$Index, [String]$prevHash, [String]$time, [String]$data)
{
    return Protect-CmsMessage -To 'cn=powerchain@localhost.local' -Content "$Index$prevHash$time$data"
}