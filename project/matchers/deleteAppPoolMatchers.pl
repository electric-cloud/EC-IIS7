
push (@::gMatchers,
  
  {
   id =>        "appPoolDeleted",
   pattern =>          q{APPPOOL object "(.+)" deleted},
   action =>           q{
    
              my $description = "Application Pool $1 \n deleted successfully";
              setProperty("summary", $description . "\n");
    
   },
  },
  
  {
   id =>        "appPoolNotFound",
   pattern =>          q{Cannot find APPPOOL object with identifier "(.+)"},
   action =>           q{
    
              my $description = "Cannot find Application \n Pool $1";
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

