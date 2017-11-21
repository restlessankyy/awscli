#!/bin/bash
INPUT_FILE="/root/awscloud/scripts/instance_id.txt"
while read i
do
       #Instance_Name=`echo $i|awk -F',' '{print $1}'`
        Instance_Id=`echo $i|awk -F',' '{print $2}'`
        Managed_By=`echo $i|awk -F',' '{print $3}'`
        Billable=`echo $i|awk -F',' '{print $4}'`
        Service_Class=`echo $i|awk -F',' '{print $5}'`
        Role=`echo $i|awk -F',' '{print $6}'`
        OS_Name=`echo $i|awk -F',' '{print $7}'`
        OS_Version=`echo $i|awk -F',' '{print $8}'`
        Monitoring_Scope=`echo $i|awk -F',' '{print $9}'`
aws ec2 create-tags --resources $Instance_Id --tags Key=\""Managed By\"",Value=\""$Managed_By\"" Key=\""Billable\"",Value=\""$Billable\"" Key=\""Service Class\"",Value=\""$Service_Class\"" Key=\""Role\"",Value=\""$Role\"" Key=\""OS Name\"",Value=\""$OS_Name\"" Key=\""OS Version\"",Value=\""$OS_Version\"" Key=\""Monitoring in Scope\"",Value=\""$Monitoring_Scope\""
done < $INPUT_FILE

