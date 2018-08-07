<#
.DESCRIPTION
    Creates a genesis block to start the block chain
.EXAMPLE
    new-GenesisBlock()
#>

function new-GenesisBlock()
{
    begin
    {
        . ./ConvertTo-BlockHash.ps1
        . ./Block.ps1
    }
    process
    {
        $genTime = get-date -format yyyyMMddHHmmss
    }
    end
    {
        return new-object Block -ArgumentList 0, (convertto-blockHash -Index 0 -prevHash "12345" -time $genTime -data "Genesis Block"), "12345", $genTime, "Genesis Block"
    }
}