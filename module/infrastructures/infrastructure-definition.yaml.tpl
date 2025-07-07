infrastructureDefinition:
  name: ${infrastructureName}
  identifier: ${infrastructureIdentifier}
  description: Kubernetes Infrastructure for ${infrastructureName}
  orgIdentifier: ${orgIdentifier}
  projectIdentifier: ${projectIdentifier}
  environmentRef: ${envIdentifier}
  deploymentType: ${deploymentType}
  type: ${type}
  spec:
    connectorRef: org.${connectorRef}
    namespace: ${namespace}
    releaseName: ${releaseName}
    allowSimultaneousDeployments: false