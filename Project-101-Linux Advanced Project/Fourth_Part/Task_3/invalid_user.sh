
# first solution;

awk -F: '/Invalid user/ {print $4}' auth.log | cut -d ' ' -f4 | sort | uniq -c | tee user.txt

# second solution;

cat auth.log | grep "Failed password for invalid user" | awk '{print $11}' | sort | uniq -c > result.txt 


