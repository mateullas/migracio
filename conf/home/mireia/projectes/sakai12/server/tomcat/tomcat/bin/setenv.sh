#Variables d'entorn de java
JAVA_OPTS="-server -d64 -Djava.awt.headless=true 
					-Dsun.net.inetaddr.ttl=60 
					-Dsun.rmi.dgc.client.gcInterval=3600000 
					-Dsun.rmi.dgc.server.gcInterval=3600000 -Xms3g -Xmx3g -XX:NewSize=768m 
					-XX:MaxNewSize=768m -XX:PermSize=512m -XX:MaxPermSize=512m 
					-XX:+UseConcMarkSweepGC -XX:+CMSIncrementalMode -XX:+CMSIncrementalPacing 
					-XX:+CMSParallelRemarkEnabled -XX:+UseParNewGC -XX:SurvivorRatio=6 
					-XX:+DisableExplicitGC
					-Duser.language=ca 
					-Duser.region=ES -Dhttp.agent=Sakai 
					-Dorg.apache.jasper.compiler.Parser.STRICT_QUOTE_ESCAPING=false 
					-Dsun.lang.ClassLoader.allowArraySyntax=true
					-Dcom.sun.management.jmxremote"

#Sortida del log de sakai
CATALINA_OUT="/home/mireia/projectes/sakai12/logs12/catalina.out"
