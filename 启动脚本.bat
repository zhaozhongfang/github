rmdir /s /q E:\kafka_2.12-3.0.1\kafka_2.12-3.0.1data
rmdir /s /q E:\kafka_2.12-3.0.1\kafka_2.12-3.0.1kafka-logs
E:
cd E:\Redis-x64-3.2.100
start "redis" cmd /k E:\Redis-x64-3.2.100\redis-server.exe
E:
cd E:\nacos-server-2.0.4\nacos
start "nacos" cmd /k E:\nacos-server-2.0.4\nacos\start.bat
E:
cd E:\kaifazhongxin\apache-jmeter-5.5\bin
start "jmeter" cmd /k   E:\kaifazhongxin\apache-jmeter-5.5\bin\jmeter.bat
E:
cd E:\kafka_2.12-3.0.1\bin\windows
start "zookeeper" cmd /k   E:\kafka_2.12-3.0.1\bin\windows\zookeeper-server-start.bat E:\kafka_2.12-3.0.1\config\zookeeper.properties
E:
cd E:\kafka_2.12-3.0.1\bin\windows
start "kafka" cmd /k   E:\kafka_2.12-3.0.1\bin\windows\kafka-server-start.bat E:\kafka_2.12-3.0.1\config\server.properties