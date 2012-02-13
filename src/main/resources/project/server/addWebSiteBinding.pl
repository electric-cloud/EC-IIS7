# -------------------------------------------------------------------------
   # File
   #    addWebSiteBinding.pl
   #
   # Dependencies
   #    None
   #
   # Template Version
   #    1.0
   #
   # Date
   #    13/12/2011
   #
   # Engineer
   #    Rafael Sanchez
   #
   # Copyright (c) 2011 Electric Cloud, Inc.
   # All rights reserved
   # -------------------------------------------------------------------------
   
   
   # -------------------------------------------------------------------------
   # Includes
   # -------------------------------------------------------------------------
   use ElectricCommander;
   use warnings;
   use strict;
   use Cwd;
   use File::Spec;
   use diagnostics;
   use ElectricCommander::PropDB;
   $|=1;
   
   # -------------------------------------------------------------------------
   # Constants
   # -------------------------------------------------------------------------
   use constant {
       SUCCESS => 0,
       ERROR   => 1,
       
       PLUGIN_NAME => 'EC-IIS7',
       WIN_IDENTIFIER => 'MSWin32',
       DEFAULT_APPCMD_PATH => '%windir%\system32\inetsrv\appcmd',
       CREDENTIAL_ID => 'credential',
       
  };
  
  ########################################################################
  # trim - deletes blank spaces before and after the entered value in 
  # the argument
  #
  # Arguments:
  #   -untrimmedString: string that will be trimmed
  #
  # Returns:
  #   trimmed string
  #
  ########################################################################  
  sub trim($) {
   
      my ($untrimmedString) = @_;
      
      my $string = $untrimmedString;
      
      #removes leading spaces
      $string =~ s/^\s+//;
      
      #removes trailing spaces
      $string =~ s/\s+$//;
      
      #returns trimmed string
      return $string;
  }
  
  # -------------------------------------------------------------------------
  # Variables
  # -------------------------------------------------------------------------
  
  $::gEC = new ElectricCommander();
  $::gEC->abortOnError(0);
  $::gWebSiteName = ($::gEC->getProperty("websitename") )->findvalue("//value");
  $::gBindingProtocol = ($::gEC->getProperty("bindingprotocol") )->findvalue("//value");
  $::gBindingInfo = ($::gEC->getProperty("bindinginformation") )->findvalue("//value");
  
  
  # -------------------------------------------------------------------------
  # Main functions
  # -------------------------------------------------------------------------
  
  ########################################################################
  # main - contains the whole process to be done by the plugin, it builds 
  #        the command line, sets the properties and the working directory
  #
  # Arguments:
  #   none
  #
  # Returns:
  #   none
  #
  ########################################################################
  sub main() {
   
    my @args = ();
    my $url = '';
    my $user = '';
    my $pass = '';
    my $iisVersion = '';
    my $computerName = '';
    
    my $content = '';
    
    my $appcmdLocation = DEFAULT_APPCMD_PATH;
    my %props;
    
    push(@args, $appcmdLocation  . " set site");
	
	if($::gWebSiteName && $::gWebSiteName ne ''){
		push(@args, '/site.name:"' . $::gWebSiteName.'"');
	}
	
	if($::gBindingProtocol && $::gBindingProtocol ne '' && $::gBindingInfo && $::gBindingInfo ne ''){
		push(@args, '/+bindings.[protocol=\'' . $::gBindingProtocol.'\',bindingInformation=\''. $::gBindingInfo.':\']');
	}
    
    #generate command line
    my $cmdLine = createCommandLine(\@args);
       
	#execute command line that creates the website
	print "$cmdLine\n";
	$content = `$cmdLine`;

	print $content;

	#evaluates if exit was successful to mark it as a success or fail the step
	if($? == SUCCESS){

	 $::gEC->setProperty("/myJobStep/outcome", 'success');
	 
	 if($content !~ m/SITE object "(.+)" changed/){
		 $::gEC->setProperty("/myJobStep/outcome", 'error');
	 }
	 
	}else{
	 $::gEC->setProperty("/myJobStep/outcome", 'error');
	}
    
    #add masked command line to properties object
    $props{'cmdLine'} = $cmdLine;
        
    #set prop's hash to EC properties
    setProperties(\%props);

  }
  
  ########################################################################
  # createCommandLine - creates the command line for the invocation
  # of the program to be executed.
  #
  # Arguments:
  #   -arr: array containing the command name (must be the first element) 
  #         and the arguments entered by the user in the UI
  #
  # Returns:
  #   -the command line to be executed by the plugin
  #
  ########################################################################
  sub createCommandLine($) {
      
      my ($arr) = @_;
      
      my $commandName = @$arr[0];
      
      my $command = $commandName;
      
      shift(@$arr);
      
      foreach my $elem (@$arr) {
          $command .= " $elem";
      }
      
      return $command;
         
  }
  
  ########################################################################
  # setProperties - set a group of properties into the Electric Commander
  #
  # Arguments:
  #   -propHash: hash containing the ID and the value of the properties 
  #              to be written into the Electric Commander
  #
  # Returns:
  #   none
  #
  ########################################################################
  sub setProperties($) {
   
      my ($propHash) = @_;
      
      foreach my $key (keys % $propHash) {
          my $val = $propHash->{$key};
          $::gEC->setProperty("/myCall/$key", $val);
      }
  }
  
  ##########################################################################
  # getConfiguration - get the information of the configuration given
  #
  # Arguments:
  #   -configName: name of the configuration to retrieve
  #
  # Returns:
  #   -configToUse: hash containing the configuration information
  #
  #########################################################################
  sub getConfiguration($){
   
      my ($configName) = @_;
   
      my %configToUse;
      
      my $proj = "$[/myProject/projectName]";
      my $pluginConfigs = new ElectricCommander::PropDB($::gEC,"/projects/$proj/iis_cfgs");
      
      my %configRow = $pluginConfigs->getRow($configName);
      
      # Check if configuration exists
      unless(keys(%configRow)) {
          print 'Error: Configuration doesn\'t exist';
          exit ERROR;
      }
      
      # Get user/password out of credential
      my $xpath = $::gEC->getFullCredential($configRow{credential});
      $configToUse{'user'} = $xpath->findvalue("//userName");
      $configToUse{'password'} = $xpath->findvalue("//password");
      
      foreach my $c (keys %configRow) {
          
          #getting all values except the credential that was read previously
          if($c ne CREDENTIAL_ID){
              $configToUse{$c} = $configRow{$c};
          }
          
      }
     
      return %configToUse;
   
  }
  
  main();
   
  1;
