<#
.DESCRIPTION
    Compares a new block to the previous block to see if it is a valid block
.EXAMPLE
    Compare-Blocks -prevBlock $previousBlock -newBlock $newBlock
#>

function Compare-Blocks($prevBlock, $newBlock)
{
    begin
    {
        . ./ConvertTo-BlockHash.ps1
        . ./Block.ps1
    }
    process
    {
        if (-not (($prevBlock.Index + 1) -eq $newBlock.Index))
        {
            return false
        }
        elseif (-not ($prevBlock.Hash -eq $newBlock.prevHash))
        {
            return false
        }
        elseif (-not ($newBlock.Hash -eq (ConvertTo-BlockHash -Index $newBlock.Index -prevHash $newBlock.prevHash -Time $newBlock.Time -Data $newBlock.Data)))
        {
            return false
        }
        Else
        {
            return true
        }
    }
    End
    {
        
    }
}