﻿Function PDQPACKAGES{

Invoke-Command -ComputerName ms-pdq { "SELECT Name from Packages;" | sqlite3.exe "C:\ProgramData\Admin Arsenal\PDQ Deploy\Database.db" } | Sort-Object
}