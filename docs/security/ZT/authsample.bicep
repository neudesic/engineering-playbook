@description('Name of the Web App')
param webAppName string
@description('Location for resources')
param location string = resourceGroup().location
resource webApp 'Microsoft.Web/sites@2022-03-01' = {
  name: webAppName
  location: location
  kind: 'app'
  properties: {
    httpsOnly: true
  }
  identity: {
    type: 'SystemAssigned'
  }
  sku: {
    name: 'P1v2'
    capacity: 1
    tier: 'Premium'
  }
}
