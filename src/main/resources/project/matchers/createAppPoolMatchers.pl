
push (@::gMatchers,
  
  {
   id =>        "appPoolExists",
   pattern =>          q{App Pool (.+) already exists.},
   action =>           q{
    
              my $description = "Application Pool $1 \n already exists";
              setProperty("summary", $description . "\n");
    
   },
  },
  
  {
   id =>        "appPoolCreated",
   pattern =>          q{APPPOOL object "(.+)" added},
   action =>           q{
    
              my $description = "Application Pool $1 \n created successfully";
              setProperty("summary", $description . "\n");
    
   },
  },
  
  {
   id =>        "appNotFound",
   pattern =>          q{Cannot find APP object with identifier "(.+)"},
   action =>           q{
    
              my $description = "Cannot find Application \n $1";
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

