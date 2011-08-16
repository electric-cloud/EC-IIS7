
push (@::gMatchers,
  {
   id =>        "appPoolStopped",
   pattern =>          q{"(.+)" successfully stopped},
   action =>           q{
    
              my $description = "Application Pool $1 stopped successfully";
                              
              setProperty("summary", $description . "\n");
    
   },
  },
  
  {
   id =>        "appPoolNotFound",
   pattern =>          q{.*Cannot find APPPOOL object with identifier "(.+)".*},
   action =>           q{
    
              my $description = "Cannot find Application Pool $1";
                              
              setProperty("summary", $description . "\n");
    
   },
  },
  
    {
   id =>        "error",
   pattern =>          q{ERROR \( message:(.+)\)},
   action =>           q{
    
              my $description = "$1";
              setProperty("summary", $description . "\n");
    
   },
  },
  
 
);

