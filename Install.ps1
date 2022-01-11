#Connect-AZAccount -Subscription fa1b35df-34b1-4327-86d9-bc51248c1927

$deploymentName = "sandboxTest03"
$deploymentNamek8s = "sandboxTest03-k8s"
$resourceGroup = "webfrontend-bx-rg"
#$templateFile = "https://dev.azure.com/nwnatural/Web%20Team%20Project/_apis/sourceProviders/TfsGit/filecontents?repository=NWN.WebFrontEnd&path=/azureEnvARMTemplates/XPk8s/azuredeploy.json&commitOrBranch=sc10-upgrade&api-version=6.0"
#$parameterFile = "https://dev.azure.com/nwnatural/Web%20Team%20Project/_apis/sourceProviders/TfsGit/filecontents?repository=NWN.WebFrontEnd&path=/azureEnvARMTemplates/XPk8s/azuredeploy.parameters.json&commitOrBranch=sc10-upgrade&api-version=6.0"
$templateFile = "https://bxsitecoretemplates.blob.core.windows.net/arm-templates/azuredeploy.json?sv=2020-08-04&ss=bf&srt=sco&sp=rwdlacitfx&se=2022-12-23T10:22:10Z&st=2021-12-23T02:22:10Z&spr=https&sig=a7BeN2B0XVR2SsVlW34VKGK02HNe%2FyQXnQOANmIzlFQ%3D"
$templateFilek8s = "https://bxsitecoretemplates.blob.core.windows.net/arm-templates/azuredeployk8s.json?sv=2020-08-04&ss=bf&srt=sco&sp=rwdlacitfx&se=2022-12-23T10:22:10Z&st=2021-12-23T02:22:10Z&spr=https&sig=a7BeN2B0XVR2SsVlW34VKGK02HNe%2FyQXnQOANmIzlFQ%3D"
$parameterFile = "https://bxsitecoretemplates.blob.core.windows.net/arm-templates/azuredeploy.parameters.json?sv=2020-08-04&ss=bf&srt=sco&sp=rwdlacitfx&se=2022-12-23T10:22:10Z&st=2021-12-23T02:22:10Z&spr=https&sig=a7BeN2B0XVR2SsVlW34VKGK02HNe%2FyQXnQOANmIzlFQ%3D"

New-AzResourceGroupDeployment -Name $deploymentName -ResourceGroupName $resourceGroup -TemplateUri $templateFile -TemplateParameterUri $parameterFile -debug

New-AzResourceGroupDeployment -Name $deploymentNamek8s -ResourceGroupName $resourceGroup -TemplateUri $templateFilek8s -TemplateParameterUri $parameterFile -debug