# URL : http://perldoc.perl.org/perlrequick.html
# Simple word matching
# The simplest regex is simply a word, or more generally, a string of characters.
# A regex consisting of a word matches any string that contains that word:

#"Hello World" =~ /World/; # matches

# In this statement, World is a regex and the // enclosing tells Perl to search
# a string for a match. The operator =~ associates the string withe the regex
# match and produces a true value if the regex matched, or false if the regex
# did not match. In our case, World matches the second word in "Hello World",
# so the expression is true. This idea has several variations.

# Expressions like this are useful in conditions:
print "It matches\n" if "Hello World" =~ /World/;

# The sense of the match can be reversed by using !~ operator:
print "It doesn't match\n" if "Hello World" !~ /World/;

# The literal string in the regex can be replaced by a variable:
$greeting = "World";
print "It matches\n" if "Hello World" =~ /$greeting/;

# If you're matching against $_, the $_ =~ part can be omitted:
$_ = "Hello World";
print "It matches\n" if /World/;

# Finally, the // default delimeters for a match can be changed to arbitrary
# delimeters by putting an 'm' out front:
"Hello World" =~ m!World!;   # matches, delimetered by '!'
"Hello World" =~ m{World};   # matches, note the matching '{}'
"/usr/bin/perl" =~ m"/perl"; # matches after '/usr/bin',
                             # '/' becomes an ordinary char

# Regexes must match a part of the string exactly in order for the statement
# to be true:
"Hello World" =~ /world/; # doesn't match, case sesitive
"Hello World" =~ /o W/; # matches, ' ' is an ordinary char
"Hello World" =~ /World /; # doesn't match, no ' ' at end

# Perl will always match at the earliest possible point in the string:
"Hello World" =~ /o/; # matches 'o' in 'Hello'
"That hat is red" =~ /hat/; #matches 'hat' in 'That'

# Not all characters can be used 'as is' in a match.
# Some characters, called metracharacters, are reserved for use in regex
# notation. Thre metacharacters are
# {}[]()^$.|*+?\
# A metacharacter 

