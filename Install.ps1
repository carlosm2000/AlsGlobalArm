#Connect-AZAccount -Subscription 80e2f4cb-198c-49b1-ad82-da207799c3f9

$deploymentName = "AlsGlobal02"
$deploymentNamek8s = "alsglobal-02-k8s"
$resourceGroup = "ALSGlobalARM-02"

$templateFile = "https://raw.githubusercontent.com/carlosm2000/AlsGlobalArm/master/azuredeploy.json?token=GHSAT0AAAAAABMBPMD4FQSPWZ3BWKLIMKQKYO55DUQ"
$templateFilek8s = "https://raw.githubusercontent.com/carlosm2000/AlsGlobalArm/master/azuredeployk8s.json?token=GHSAT0AAAAAABMBPMD5VRAZ2WBWRD34YE2WYO55EBQ"
$parameterFile = "https://raw.githubusercontent.com/carlosm2000/AlsGlobalArm/master/azuredeploy.parameters.json?token=GHSAT0AAAAAABMBPMD4OOH2KE37GPURRRMEYO55EAQ"

New-AzResourceGroupDeployment -Name $deploymentName -ResourceGroupName $resourceGroup -TemplateUri $templateFile -TemplateParameterUri $parameterFile -debug

# New-AzResourceGroupDeployment -Name $deploymentNamek8s -ResourceGroupName $resourceGroup -TemplateUri $templateFilek8s -TemplateParameterUri $parameterFile -debug