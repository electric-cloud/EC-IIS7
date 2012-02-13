
push (@::gMatchers,
  
  {
   id =>        "stats",
   pattern =>          q{APP "(.+)" \(applicationPool:(.+)\)},
   action =>           q{
            incValueWithString(
                "apps", 
                "Applications: 0 detected");
            
            updateSummary();
   },
  },
  
  {
   id =>        "error1",
   pattern =>          q{ERROR \( message:(.+)\)},
   action =>           q{
    
              my $description = "$1";
              setProperty("summary", $description . "\n");
    
   },
  },
  
  {
   id =>        "error2",
   pattern =>          q{.*(Failed to process input).*},
   action =>           q{
    
              my $description = "$1. Check entered search criteria.";
              setProperty("summary", $description . "\n");
    
   },
  },
  
  
  
);


sub incValueWithString($;$$) {
 
    my ($name, $patternString, $increment) = @_;

    $increment = 1 unless defined($increment);

    my $localString = (defined $::gProperties{$name}) ? $::gProperties{$name} :
                                                        $patternString;

    $localString =~ /([^\d]*)(\d+)(.*)/;
    my $leading = $1;
    my $numeric = $2;
    my $trailing = $3;
    
    $numeric += $increment;
    $localString = $leading . $numeric . $trailing;

    setProperty ($name, $localString);
}

sub updateSummary() {
 
    my $summary = (defined $::gProperties{"apps"}) ? $::gProperties{"apps"} . "\n" : '';
	setProperty ('summary', $summary);
}

