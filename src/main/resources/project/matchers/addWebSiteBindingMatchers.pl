
push (@::gMatchers,
  
  {
   id =>        "bindingAdded",
   pattern =>          q{SITE object "(.+)" changed},
   action =>           q{
    
              my $description = "Binding to $1 \n added successfully";
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

