<#
.DESCRIPTION
    Creates a new block to be added to the block chain
.EXAMPLE
    Add-Block -previousBlock $Block -Data "Block Data"
#>

function add-Block($previousBlock, $Data)
{
    begin
    {
        . ./ConvertTo-BlockHash.ps1
        . ./Block.ps1
    }
    process
    {
        $nexttime = get-date -format ddMMyyyyHHmmss
        $nextHash = convertto-blockHash -Index $previousBlock.Index -prevHash $previousBlock.Hash -time $nexttime -data $data
    }
    end
    {
        return new-object Block -ArgumentList ($previousBlock.Index + 1), $nextHash, $previousBlock.Hash, $nexttime, $data
    }
}