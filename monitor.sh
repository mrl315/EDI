export host=`uname -n`
process_count=`pgrep -lf "/si/IBM/SI/install/jdk/bin/java" | wc -l`
if [[ $process_count -le 3 ]]; then
        echo "Not all processes running on SI $host" | mailx -v -s "Not all processes running on SI $host" businesssystemadmins@unfi.com
fi
pid=`cat /si/IBM/SI/install/extpurge.pid`
nopid=$?
running=`ps -ef | grep -v grep | grep $pid | wc -l`
if [ $running -le 1 ] || [ nopid -ne 0 ]; then
        echo "Oracle DB External purging process is not running on SI $host" | mailx -v -s "Oracle DB External purging process is not running on SI $host" businesssystemadmins@unfi.com,OracleDBAs@unfi.com
fi
