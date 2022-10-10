#!/bin/bash

mkdir -p /opt/server-migration/scripts
cd /opt/server-migration/scripts
if [[ $? -ne 0 ]]
then
 echo "Failed while creating directory /opt/server-migration/scripts"
 exit 1
else
 echo "Directory /opt/diy-migration-appliance/scripts created"
fi
for f in appliance.sh config cronjobscheduler.sh ibmcloudloginstatus.sh linux_precheck.sh migration.sh windows_precheck.ps1 
 do
  response=$(curl -so ${f} -w "%{http_code}" https://raw.githubusercontent.com/IBM-Cloud/vpc-server-migration/main/server-migration-scripts/${f})
   if [ "$response" -eq "200" ]; then
    echo "${f} download complete - /opt/diy-migration-appliance/Scripts, http response code is: $response" >>/var/log/download_script.log
   else
    echo "Failed downloading  ${f} to /opt/diy-migration-appliance/Scripts, http response code is $response" >>/var/log/download_script.log
    exit 1
   fi
 done
echo "Updating /opt/server-migration/scripts permission" >>/var/log/download_script.log
chmod +x *
curl -fsSL https://clis.cloud.ibm.com/install/linux | sh
ibmcloud plugin install vpc-infrastructure
ibmcloud plugin install cloud-object-storage
sudo apt-get update -y 
sudo apt-get install nmap -y 
sudo apt-get install qemu-kvm -y 
