#!/usr/bin/awk
{
split($0,values," ");
for (value in values) {
if (values[value] ~ /^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$/ || values[value] ~ /^.*:.*:.*:.*:.*:.*$/) {
ip[values[value]] = 1;
}
}
}
END {
for ( i in ip ){
print i;
}
}
