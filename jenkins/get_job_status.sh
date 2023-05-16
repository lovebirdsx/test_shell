source ./init.sh
curl -u $JENKINS_USER:$JENKINS_TOKEN -X GET $JENKINS_URL/job/$JOB/lastBuild/api/json | jq > job_status.json
start job_status.json
