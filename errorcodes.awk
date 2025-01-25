#!/usr/bin/awk
{
errorcode[$NF] = errorcode[$NF] + 1;
}
END { 
for ( i in errorcode ) {
if ( i != "" ){
print "Error code: "i" count : "errorcode[i];
}
}
}
