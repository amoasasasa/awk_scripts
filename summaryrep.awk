#!/usr/bin/awk
BEGIN {
    usercount = 0;
    success = 0;
    failed = 0;
}

{
    split($0, values, " ");  # Split the line into fields
    for (value in values) {
        # Check if the field contains user and count requests per user
        if (values[value] ~ /user/) {
            request[values[value]] += 1;
        }

        if (values[value] == "200") {
            success++;
        } else if (values[value] == "404" || values[value] == "403") {
            failed++;
        }
    }
}

END {
    print "Total Number Of Requests Per User:";
    for (i in request) {
        print i" "request[i];
    }

    print "Total unique users count:", length(request);
    print "Total Successful Requests:", success;
    print "Total Failed Requests:", failed;
}
