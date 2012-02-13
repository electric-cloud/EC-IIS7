
push (@::gMatchers,
  
  {
   id =>        "webSiteExists",
   pattern =>          q{SITE (.+) already exists.},
   action =>           q{
    
              my $description = "WebSite $1 \n already exists";
              setProperty("summary", $description . "\n");
    
   },
  },
  
  {
   id =>        "webSiteCreated",
   pattern =>          q{SITE object "(.+)" added},
   action =>           q{
    
              my $description = "WebSite $1 \n created successfully";
              setProperty("summary", $description . "\n");
    
   },
  },
  
  {
   id =>        "webSiteNotFound",
   pattern =>          q{Cannot find SITE object with identifier "(.+)"},
   action =>           q{
    
              my $description = "Cannot find SITE \n $1";
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

