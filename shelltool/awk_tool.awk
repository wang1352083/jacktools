#1. awk function  for ascii
cat foo.awk
#!/bin/awk -f

BEGIN {
    for (ii = 0; ii < 256; ++ii) {
        ch = sprintf("%c", ii);
        ascii[ch] = ii;
    }

    for (ii = 1; ii < ARGC; ii++) {
        print "ord(" ARGV[ii] ") = " ascii[ARGV[ii]];
    }
}
# ./foo.awk  1 3 4
