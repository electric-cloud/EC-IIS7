
push (@::gMatchers,
  
  {
   id =>        "appDeleted",
   pattern =>          q{APP object "(.+)" deleted},
   action =>           q{
    
              my $description = "Web Application $1 \n deleted successfully";
              setProperty("summary", $description . "\n");
    
   },
  },
  
   {
   id =>        "appNotFound",
   pattern =>          q{ERROR \( message:(.+)\)},
   action =>           q{
    
              my $description = "$1";
              setProperty("summary", $description . "\n");
    
   },
  },
  
);

