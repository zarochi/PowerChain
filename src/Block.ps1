class Block
{
    [Int64] $Index
    [String] $Hash
    [String] $prevHash
    [String] $Time
    [String] $Data

    Block([Int64] $Index, [String] $Hash, [String] $prevHash, [String] $Time, [String] $Data)
    {
        $this.Index = $Index
        $this.Hash = $Hash
        $this.prevHash = $prevHash
        $this.Time = $Time
        $this.Data = $Data
    }
}