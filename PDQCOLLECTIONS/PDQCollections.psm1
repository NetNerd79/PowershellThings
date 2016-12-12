Function PDQCollections{

Invoke-Command -ComputerName %YourPDQ% { "SELECT Name from Collections;" | sqlite3.exe "C:\ProgramData\Admin Arsenal\PDQ Inventory\Database.db" } | Sort-Object
}
