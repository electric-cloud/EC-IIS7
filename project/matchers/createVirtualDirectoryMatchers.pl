
push (@::gMatchers,
  
  {
   id =>        "vdirCreated",
   pattern =>          q{VDIR object "(.+)" added},
   action =>           q{
    
              my $description = "Virtual Directory $1 \n created successfully";
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

