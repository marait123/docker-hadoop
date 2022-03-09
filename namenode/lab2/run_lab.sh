cd /
cp /lab2/WordCount.java /Lab
export HADOOP_CLASSPATH=$(hadoop classpath)
hadoop fs -mkdir /WordCountTutorial 
hadoop fs -mkdir /WordCountTutorial/Input
hadoop fs -put /Lab/Input/input.txt /WordCountTutorial/Input
cd /Lab
javac -classpath $HADOOP_CLASSPATH -d tutorial_classes WordCount.java
jar -cvf WordCount.jar -C tutorial_classes .
hadoop dfs -rm -r /WordCountTutorial/Output
hadoop jar WordCount.jar WordCount /WordCountTutorial/Input /WordCountTutorial/Output
hadoop dfs -cat /WordCountTutorial/Output/*
cd /