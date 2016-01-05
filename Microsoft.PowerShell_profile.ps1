function Move-Trash([string] $path="")
{
    Move-Item $path ~/Trash
}

function Clean-Trash()
{
    Remove-Item ~/Trash/* -Force
}

function Trash-List()
{
    Get-ChildItem ~/Trash
}

Remove-Item alias:/rm

Set-Alias show Get-ChildItem
Set-Alias trash Move-Trash
Set-Alias tr Move-Trash
Set-Alias rm Move-Trash
Set-Alias clean Clean-Trash
Set-Alias tl Trash-List
