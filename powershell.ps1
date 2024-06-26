# Login to Azure (Uncomment the line below if you're not already logged in)
# Connect-AzAccount

# Variables
$resourceGroupName = "MyResourceGroup"
$location = "East US"
$storageAccountName = "mystorageaccount" + $(Get-Random)
$storageSkuName = "Standard_LRS"

# Create a new resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create the storage account
New-AzStorageAccount -Name $storageAccountName `
                     -ResourceGroupName $resourceGroupName `
                     -Location $location `
                     -SkuName $storageSkuName `
                     -Kind "StorageV2" `
                     -AccessTier "Hot"

# Output the storage account name
Write-Output "Storage account $storageAccountName created successfully."