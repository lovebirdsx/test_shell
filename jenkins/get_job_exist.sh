source ./init.sh
for job in "${JOBS[@]}"; do
    response=$(curl -s -u "$JENKINS_USER:$JENKINS_TOKEN" -X GET "$JENKINS_URL/job/$job/api/json")
    if echo "$response" | jq -e '.name' > /dev/null 2>&1; then
        job_exists=$(echo "$response" | jq -r '.name')
        if [ "$job_exists" == "$job" ]; then
            echo "Job '$job' exists in Jenkins."
        else
            echo "Job '$job' does not exist in Jenkins."
        fi
    else
        echo "Job '$job' does not exist in Jenkins."
    fi
done