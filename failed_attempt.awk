#!/usr/bin/awk
{
if ($NF == "403"){
match($0,/\[[^\]]+\]/,timestamp); 
print $0;
if (timestamp[0] != ""){
print timestamp[0];
}
}
}
