
push (@::gMatchers,
  
  {
   id =>        "appCreated",
   pattern =>          q{APP object "(.+)" added},
   action =>           q{
    
              my $description = "Web Application $1 created successfully";
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

