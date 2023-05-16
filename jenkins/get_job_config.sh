source ./init.sh

export JOB='aki'
curl -X GET -u $JENKINS_USER:$JENKINS_TOKEN $JENKINS_URL/job/$JOB/config.xml > job_$JOB.xml
start job_$JOB.xml

export JOB='multipy'
curl -X GET -u $JENKINS_USER:$JENKINS_TOKEN $JENKINS_URL/job/$JOB/config.xml > job_$JOB.xml
start job_$JOB.xml
