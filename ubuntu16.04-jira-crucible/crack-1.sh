CONTAINERNAME=`docker ps --format "{{.Names}}" | grep mshk_crucible_crucible.1`

docker cp $CONTAINERNAME:/home/work/_app/_jira_crucible/lib/atlassian-extras-2.5.jar ./atlassian-extras-2.3.1-SNAPSHOT.jar
docker cp $CONTAINERNAME:/usr/src/_crucible/crucible_keygen.jar .

echo "Step #1 is DONE."
echo "Run java -jar crucible_keygen.jar in the VM and crack the atlassian-extras-2.3.1-SNAPSHOT.jar file now."

