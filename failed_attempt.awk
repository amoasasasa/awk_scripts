#!/usr/bin/awk
/.* 403$/ {
match($0,/\[[^\]]+\]/,timestamp); 
if (timestamp[0] != ""){
print timestamp[0];
}
}
