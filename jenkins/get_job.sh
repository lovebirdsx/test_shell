source ./init.sh
curl -u $JENKINS_USER:$JENKINS_TOKEN -X GET $JENKINS_URL/job/$JOB/api/json | jq > job.json
start job.json
