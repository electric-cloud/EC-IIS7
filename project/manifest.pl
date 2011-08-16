@files = (
 ['//property[propertyName="ui_forms"]/propertySheet/property[propertyName="IISCreateConfigForm"]/value'  , 'IISCreateConfigForm.xml'],
 ['//property[propertyName="ui_forms"]/propertySheet/property[propertyName="IISEditConfigForm"]/value'  , 'IISEditConfigForm.xml'],
 
 ['//property[propertyName="http_matchers"]/value', 'matchers/httpMatchers.pl'],
 ['//property[propertyName="startsite_matchers"]/value', 'matchers/startSiteMatchers.pl'],
 ['//property[propertyName="stopsite_matchers"]/value', 'matchers/stopSiteMatchers.pl'],
 ['//property[propertyName="createapppool_matchers"]/value', 'matchers/createAppPoolMatchers.pl'],
 ['//property[propertyName="startapppool_matchers"]/value', 'matchers/startAppPoolMatchers.pl'],
 ['//property[propertyName="stopapppool_matchers"]/value', 'matchers/stopAppPoolMatchers.pl'], 
 ['//property[propertyName="assignapptoapppool_matchers"]/value', 'matchers/assignAppToAppPoolMatchers.pl'],
 ['//property[propertyName="createvirtualdirectory_matchers"]/value', 'matchers/createVirtualDirectoryMatchers.pl'],
 ['//property[propertyName="deletevirtualdirectory_matchers"]/value', 'matchers/deleteVirtualDirectoryMatchers.pl'],
 ['//property[propertyName="createwebapplication_matchers"]/value', 'matchers/createWebApplicationMatchers.pl'],
 ['//property[propertyName="deletewebapplication_matchers"]/value', 'matchers/deleteWebApplicationMatchers.pl'],
 ['//property[propertyName="listsites_matchers"]/value', 'matchers/listSitesMatchers.pl'],
 ['//property[propertyName="listsiteapps_matchers"]/value', 'matchers/listSiteAppsMatchers.pl'],
 
 ['//procedure[procedureName="StartWebSite"]/step[stepName="StartWebSite"]/command' , 'server/startWebSite.pl'],
 ['//procedure[procedureName="StopWebSite"]/step[stepName="StopWebSite"]/command' , 'server/stopWebSite.pl'],
 ['//procedure[procedureName="CreateAppPool"]/step[stepName="CreateAppPool"]/command' , 'server/createAppPool.pl'],
 ['//procedure[procedureName="StartAppPool"]/step[stepName="StartAppPool"]/command' , 'server/startAppPool.pl'],
 ['//procedure[procedureName="StopAppPool"]/step[stepName="StopAppPool"]/command' , 'server/stopAppPool.pl'],
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
);
