source ./init.sh
curl -u $JENKINS_USER:$JENKINS_TOKEN -X GET $JENKINS_URL/api/json | jq > jobs.json
start jobs.json
