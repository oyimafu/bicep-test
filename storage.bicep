@description('specify the envinroment')
@allowed( [
  'prod'
  'dev'
])

param envinromet string

param location string = resourceGroup().location

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-09-01' = {
 name: 'oymaug1425'
 kind: 'StorageV2'
 location: location
 sku: {
   name: (envinromet == 'dev') ? 'Standard_LRS' : 'Standard_GRS'
 }
}
