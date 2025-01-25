#!/usr/bin/awk
{
match($0,/user[0-9]+/,user);
if (user[0] != "") {
print user[0];
}
}
