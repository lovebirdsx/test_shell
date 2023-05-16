source ./init.sh

RESPONSE=$(curl -s -u $JENKINS_USER:$JENKINS_TOKEN -X GET $JENKINS_URL/job/$JOB/lastBuild/api/json)
LAST_JOB_ID=$(echo $RESPONSE | jq -r '.id')
echo "Last Done Job ID: $LAST_JOB_ID"

# 启动job
curl -u $JENKINS_USER:$JENKINS_TOKEN -X POST $JENKINS_URL/job/$JOB/build

# 等待job完成
while true
do
    sleep 2
    RESPONSE=$(curl -s -u $JENKINS_USER:$JENKINS_TOKEN -X GET $JENKINS_URL/job/$JOB/lastBuild/api/json)
    CURRENT_JOB_ID=$(echo $RESPONSE | jq -r '.id')
    echo "Current Done Job ID: $CURRENT_JOB_ID"
    if [ "$CURRENT_JOB_ID" != "$LAST_JOB_ID" ]; then
        echo "Job Done"
        break
    fi
done
