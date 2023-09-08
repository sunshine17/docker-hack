CONTAINERNAME=`docker ps --format "{{.Names}}" | grep mshk_crucible_crucible.1`

docker exec $CONTAINERNAME sh -c '/home/work/_app/_jira_crucible/bin/stop.sh;mv /home/work/_app/_jira_crucible/lib/atlassian-extras-2.5.jar /home/work/_app/_jira_crucible/lib/atlassian-extras-2.5.jar.bak'
docker cp atlassian-extras-2.3.1-SNAPSHOT.jar $CONTAINERNAME:/home/work/_app/_jira_crucible/lib/atlassian-extras-2.5.jar
docker exec $CONTAINERNAME sh -c '/home/work/_app/_jira_crucible/bin/start.sh'

echo "Step #2 is DONE."
echo "点击 Enter existing license，在获取授权码时，回到我们刚才打开的破解文件窗口，输入Name、Email、Organization、Server ID，点击.gen!，生成授权码，并将授权码复制到页面中，点击Next。"
