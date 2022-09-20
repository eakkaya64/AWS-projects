# first solution;

cat certificate.pem | sed 's/\\n/\n/g' | tee new.pem

# second solution;

echo -e $(cat certificate.pem) > new.pem