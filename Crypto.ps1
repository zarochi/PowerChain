function ConvertTo-BlockHash([Int64]$Index, [String]$prevHash, [String]$time, [String]$data)
{
    return Protect-CmsMessage -To 'cn=powerchain@localhost.local' -Content "$Index$prevHash$time$data"
}

function ConvertFrom-BlockHash([String]$Hash)
{
    return Unprotect-CmsMessage -Content $Hash -To 'cn=powerchain@localhost.local'
}