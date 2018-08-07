<#
.DESCRIPTION
    Converts a Block Hash to a String
.EXAMPLE
    ConvertFrom-BlockHash("1234asdf")
#>

function ConvertFrom-BlockHash([String]$Hash)
{
    return Unprotect-CmsMessage -Content $Hash -To 'cn=powerchain@localhost.local'
}