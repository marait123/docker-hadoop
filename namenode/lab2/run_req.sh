cd /
cp /lab2/req.java /req
export HADOOP_CLASSPATH=$(hadoop classpath)
hadoop fs -mkdir /req 
hadoop fs -mkdir /req/Input
hadoop fs -put /req/Input/input.txt /req/Input
cd /req
javac -classpath $HADOOP_CLASSPATH -d tutorial_classes req.java
jar -cvf req.jar -C tutorial_classes .
hadoop dfs -rm -r /req/Output
hadoop jar req.jar req /req/Input /req/Output
hadoop dfs -cat /req/Output/*
cd /