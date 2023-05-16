source ./init.sh
curl -u $JENKINS_USER:$JENKINS_TOKEN -X GET $JENKINS_URL/computer/api/json | jq > nodes.json
start nodes.json