
push (@::gMatchers,
  
  {
   id =>        "vdirDeleted",
   pattern =>          q{VDIR object "(.+)" deleted},
   action =>           q{
    
              my $description = "Virtual Directory $1 \n deleted successfully";
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

