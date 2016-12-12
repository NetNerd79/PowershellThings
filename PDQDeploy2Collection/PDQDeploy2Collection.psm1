﻿Function PDQDeploy2Collection {


param(
[Parameter(Mandatory = $True)][String]$package,
[Parameter(Mandatory = $True)][String]$collection
)


Invoke-Command -ComputerName "ms-pdq" -ScriptBlock {
param($package,$collection)
   
        pdqinventory GetCollectionComputers "$collection" | 
        ForEach{ 

        pdqdeploy Deploy -Package $package -Targets $_
                }
        } -ArgumentList $package, $collection
        }