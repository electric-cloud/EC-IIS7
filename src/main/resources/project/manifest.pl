#
#  Copyright 2015 Electric Cloud, Inc.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

@files = (
	['//property[propertyName="ui_forms"]/propertySheet/property[propertyName="IISCreateConfigForm"]/value'  , 'IISCreateConfigForm.xml'],
	['//property[propertyName="ui_forms"]/propertySheet/property[propertyName="IISEditConfigForm"]/value'  , 'IISEditConfigForm.xml'],

	['//property[propertyName="http_matchers"]/value', 'matchers/httpMatchers.pl'],
	['//property[propertyName="startsite_matchers"]/value', 'matchers/startSiteMatchers.pl'],
	['//property[propertyName="stopsite_matchers"]/value', 'matchers/stopSiteMatchers.pl'],
	['//property[propertyName="createapppool_matchers"]/value', 'matchers/createAppPoolMatchers.pl'],
	['//property[propertyName="deleteapppool_matchers"]/value', 'matchers/deleteAppPoolMatchers.pl'],
	['//property[propertyName="startapppool_matchers"]/value', 'matchers/startAppPoolMatchers.pl'],
	['//property[propertyName="stopapppool_matchers"]/value', 'matchers/stopAppPoolMatchers.pl'], 
	['//property[propertyName="assignapptoapppool_matchers"]/value', 'matchers/assignAppToAppPoolMatchers.pl'],
	['//property[propertyName="createvirtualdirectory_matchers"]/value', 'matchers/createVirtualDirectoryMatchers.pl'],
	['//property[propertyName="createwebsite_matchers"]/value', 'matchers/createWebSiteMatchers.pl'],
	['//property[propertyName="deletewebsite_matchers"]/value', 'matchers/deleteWebSiteMatchers.pl'],
	['//property[propertyName="deletevirtualdirectory_matchers"]/value', 'matchers/deleteVirtualDirectoryMatchers.pl'],
	['//property[propertyName="createwebapplication_matchers"]/value', 'matchers/createWebApplicationMatchers.pl'],
	['//property[propertyName="deletewebapplication_matchers"]/value', 'matchers/deleteWebApplicationMatchers.pl'],
	['//property[propertyName="listsites_matchers"]/value', 'matchers/listSitesMatchers.pl'],
	['//property[propertyName="listsiteapps_matchers"]/value', 'matchers/listSiteAppsMatchers.pl'],
	['//property[propertyName="addwebsitebinding_matchers"]/value', 'matchers/addWebSiteBindingMatchers.pl'],

	['//procedure[procedureName="AddWebSiteBinding"]/step[stepName="AddWebSiteBinding"]/command' , 'server/addWebSiteBinding.pl'],
	['//procedure[procedureName="StartWebSite"]/step[stepName="StartWebSite"]/command' , 'server/startWebSite.pl'],
	['//procedure[procedureName="StopWebSite"]/step[stepName="StopWebSite"]/command' , 'server/stopWebSite.pl'],
	['//procedure[procedureName="CreateAppPool"]/step[stepName="CreateAppPool"]/command' , 'server/createAppPool.pl'],
	['//procedure[procedureName="DeleteAppPool"]/step[stepName="DeleteAppPool"]/command' , 'server/deleteAppPool.pl'],
	['//procedure[procedureName="StartAppPool"]/step[stepName="StartAppPool"]/command' , 'server/startAppPool.pl'],
	['//procedure[procedureName="StopAppPool"]/step[stepName="StopAppPool"]/command' , 'server/stopAppPool.pl'],
	['//procedure[procedureName="CreateWebSite"]/step[stepName="CreateWebSite"]/command' , 'server/createWebSite.pl'],
	['//procedure[procedureName="DeleteWebSite"]/step[stepName="DeleteWebSite"]/command' , 'server/deleteWebSite.pl'],
	['//procedure[procedureName="AssignAppToAppPool"]/step[stepName="AssignApp"]/command' , 'server/assignAppToAppPool.pl'],
	['//procedure[procedureName="DeployCopy"]/step[stepName="Deploy"]/command' , 'server/deployCopy.pl'],
	['//procedure[procedureName="CheckServerStatus"]/step[stepName="CheckServerStatus"]/command' , 'server/checkServerStatus.pl'],
	['//procedure[procedureName="CreateVirtualDirectory"]/step[stepName="CreateVirtualDirectory"]/command' , 'server/createVirtualDirectory.pl'],
	['//procedure[procedureName="DeleteVirtualDirectory"]/step[stepName="DeleteVirtualDirectory"]/command' , 'server/deleteVirtualDirectory.pl'],
	['//procedure[procedureName="CreateWebApplication"]/step[stepName="CreateWebApplication"]/command' , 'server/createWebApplication.pl'],
	['//procedure[procedureName="DeleteWebApplication"]/step[stepName="DeleteWebApplication"]/command' , 'server/deleteWebApplication.pl'],
	['//procedure[procedureName="ListSites"]/step[stepName="ListSites"]/command' , 'server/listSites.pl'],
	['//procedure[procedureName="ListSiteApps"]/step[stepName="ListSiteApps"]/command' , 'server/listSiteApps.pl'],

	['//procedure[procedureName="CreateConfiguration"]/step[stepName="CreateConfiguration"]/command' , 'conf/createcfg.pl'],
	['//procedure[procedureName="CreateConfiguration"]/step[stepName="CreateAndAttachCredential"]/command' , 'conf/createAndAttachCredential.pl'],
	['//procedure[procedureName="DeleteConfiguration"]/step[stepName="DeleteConfiguration"]/command' , 'conf/deletecfg.pl'],
	['//property[propertyName="ec_setup"]/value', 'ec_setup.pl'],

	['//procedure[procedureName="AddWebSiteBinding"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7AddWebSiteBindingForm.xml'],
	['//procedure[procedureName="StartWebSite"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7StartWebSiteForm.xml'],
	['//procedure[procedureName="StopWebSite"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7StopWebSiteForm.xml'],
	['//procedure[procedureName="CreateAppPool"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7CreateAppPoolForm.xml'],
	['//procedure[procedureName="DeleteAppPool"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7DeleteAppPoolForm.xml'],
	['//procedure[procedureName="StartAppPool"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7StartAppPoolForm.xml'],	
	['//procedure[procedureName="StopAppPool"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7StopAppPoolForm.xml'],
	['//procedure[procedureName="CreateWebSite"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7CreateWebSiteForm.xml'],
	['//procedure[procedureName="DeleteWebSite"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7DeleteWebSiteForm.xml'],
	['//procedure[procedureName="AssignAppToAppPool"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7AssignAppToAppPoolForm.xml'],
	['//procedure[procedureName="DeployCopy"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7DeployCopyForm.xml'],
	['//procedure[procedureName="CheckServerStatus"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7CheckServerStatusForm.xml'],	
	['//procedure[procedureName="CreateVirtualDirectory"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7CreateVirtualDirectoryForm.xml'],
	['//procedure[procedureName="DeleteVirtualDirectory"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7DeleteVirtualDirectoryForm.xml'],
	['//procedure[procedureName="CreateWebApplication"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7CreateWebApplicationForm.xml'],
	['//procedure[procedureName="DeleteWebApplication"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7DeleteWebApplicationForm.xml'],
	['//procedure[procedureName="ListSites"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7ListSitesForm.xml'],	
	['//procedure[procedureName="ListSiteApps"]/propertySheet/property[propertyName="ec_parameterForm"]/value', 'forms/IIS7ListSiteAppsForm.xml'],
);
