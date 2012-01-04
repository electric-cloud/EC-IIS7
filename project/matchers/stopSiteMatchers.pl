
push (@::gMatchers,
  {
   id =>        "siteStarted",
   pattern =>          q{"(.+)" successfully stopped},
   action =>           q{
    
              my $description = "Site $1 \n Stopped";
              setProperty("summary", $description . "\n");
    
   },
  },
  
  {
   id =>        "appcmdNotFound",
   pattern =>          q{The system cannot find the path specified},
   action =>           q{
    
              my $description = "AppCmd utility not found";
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

