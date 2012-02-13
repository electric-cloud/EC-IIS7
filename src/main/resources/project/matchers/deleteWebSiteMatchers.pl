
push (@::gMatchers,
  
  {
   id =>        "webSiteDeleted",
   pattern =>          q{SITE object "(.+)" deleted},
   action =>           q{
    
              my $description = "WebSite $1 \n deleted successfully";
              setProperty("summary", $description . "\n");
    
   },
  },
  
  {
   id =>        "webSiteNotFound",
   pattern =>          q{Cannot find SITE object with identifier "(.+)"},
   action =>           q{
    
              my $description = "Cannot find \n SITE $1";
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

