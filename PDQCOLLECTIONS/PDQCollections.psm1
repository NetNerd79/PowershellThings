Function PDQCollections{

Invoke-Command -ComputerName ms-pdq { "SELECT Name from Collections;" | sqlite3.exe "C:\ProgramData\Admin Arsenal\PDQ Inventory\Database.db" } | Sort-Object
}