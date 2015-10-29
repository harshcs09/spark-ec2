#!/bin/bash
echo "export HADOOP_HOME=/root/hadoop" >> /root/spark/conf/spark-env.sh
echo "SPARK_DIST_CLASSPATH=$($HADOOP_HOME/bin/hadoop classpath)" >> /root/spark/conf/spark-env.sh
echo "SPARK_DIST_CLASSPATH=$SPARK_DIST_CLASSPATH:$HADOOP_HOME/share/hadoop/tools/lib/*" >> /root/spark/conf/spark-env.sh
echo "HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop/" >> /root/spark/conf/spark-env.sh
echo "export JAVA_LIBRARY_PATH=$HADOOP_HOME/lib/native:$JAVA_LIBRARY_PATH" >> /root/spark/conf/spark-env.sh
/root/spark-ec2/copy-dir /root/spark
/root/spark-ec2/copy-dir /root/hadoop
