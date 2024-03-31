#!/bin/sh

auditFile=$1
auditOutput=$(cat $auditFile | grep -v 'npm')

summary=":white_check_mark: All Good! No critical or moderate vulnerabilities found"

if [[ $( (echo "$auditOutput" | grep 'moderate\|critical') ) ]]; then
    summary=":fire: ALERT! Some vulnerabilites were found! Please check the report details!"
fi

echo "$summary"
echo "audit-summary=$summary" >> $GITHUB_OUTPUT