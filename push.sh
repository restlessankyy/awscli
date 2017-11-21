#!/bin/bash

INPUT_FILE="/root/awscloud/scripts/instance_id.txt"
while read i
do
        Instance_Name=`echo $i|awk -F',' '{print $1}'`
        Instance_Id=`echo $i|awk -F',' '{print $2}'`
        Managed_By=`echo $i|awk -F',' '{print $3}'`
        Billable=`echo $i|awk -F',' '{print $4}'`
        Service_Class=`echo $i|awk -F',' '{print $5}'`
        Role=`echo $i|awk -F',' '{print $6}'`
        OS_Name=`echo $i|awk -F',' '{print $7}'`
        OS_Version=`echo $i|awk -F',' '{print $8}'`
        Monitoring_Scope=`echo $i|awk -F',' '{print $9}'`
        BackUp_In_Scope=`echo $i|awk -F',' '{print $10}'`
        BackUp_Frequency=`echo $i|awk -F',' '{print $11}'`
        Environment=`echo $i|awk -F',' '{print $12}'`
        Patch_Frequency=`echo $i|awk -F',' '{print $13}'`
        Monitoring_Tool=`echo $i|awk -F',' '{print $14}'`
        Maintenance_Window=`echo $i|awk -F',' '{print $15}'`
        Support_Time_Zone=`echo $i|awk -F',' '{print $16}'`
        Host_Name=`echo $i|awk -F',' '{print $17}'`
        Business_Application=`echo $i|awk -F',' '{print $18}'`
        Last_Successful_Backup_Taken=`echo $i|awk -F',' '{print $19}'`






aws ec2 create-tags --resources i-095eaf9072f4a4aac --tags Key=\""CMS_Managed_by\"",Value=\""Managed_By\"" Key=\""CMS_Billable\"",Value=\""Billable\"" Key=\""CMS_Service_Class\"",Value=\""Service_Class\"" Key=\""CMS_Role\"",Value=\""Role\"" Key=\""CMS_Operating_System_Name\"",Value=\""OS_Name\"" Key=\""CMS_Operating__System_Version\"",Value=\""OS_Version\"" Key=\""CMS_Monitoring_in_Scope\"",Value=\""Monitoring_Scope\""
Key=\""CMS_Backup_in_Scope\"",Value=\""BackUp_In_Scope\"" Key=\""CMS_Backup_Frequency\"",Value=\""BackUp_Frequency\"" Key=\""CMS_Environment\"",Value=\""Environment\"" Key=\""CMS_Patch_Frequency\"",Value=\""Patch_Frequency\"" Key=\""CMS_Monitoring_tool \"",Value=\""Monitoring_Tool\"" Key=\""CMS_Maintenance_Window\"",Value=\""Maintenance_Window\""
Key=\""CMS_Support_Time_Zone\"",Value=\""Support_Time_Zone\"" Key=\""CMS_Host_Name\"",Value=\""Host_Name\"" Key=\""CMS_Business_Application\"",Value=\""Business_Application\"" Key=\""CMS_Last_Successful_Backup_Taken\"",Value=\""Last_Successful_Backup_Taken\""

done < $INPUT_FILE




