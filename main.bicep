param storageAccountName string = 'store${uniqueString(resourceGroup().id)}'

param location string = resourceGroup().location

resource myStorageAccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageAccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}
