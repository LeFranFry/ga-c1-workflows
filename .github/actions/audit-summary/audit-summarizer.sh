#!/bin/sh -l

auditReport=$1
summary=":white_check_mark: All Good! No critical or moderate vulnerabilities found"

if [[ $auditReport == *"moderate"* || $auditReport == *"critical"* ]]; then
    summary=":fire: ALERT! Some vulnerabilites were found! Please check the report details!"
fi

echo "$summary"
echo "audit-summary=$summary" >> $GITHUB_OUTPUT