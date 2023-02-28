#!/bin/bash

mkdir tmpClone4
cd tmpClone4
echo "Clone repos"

url="git@ssh.dev.azure.com:v3/IGMPlatformZero/PlatformZeroApps/"
mss=("cl-igm-batch" "jenkins-pipelinezero")
for ms in "${mss[@]}" ; do
        git clone git@ssh.dev.azure.com:v3/IGMPlatformZero/PlatformZeroApps/$ms      
done
echo "Repos cloned and ready"

for i in `ls|grep cl`; do 
 echo "--- copying $i to the repo"
 cd ..
 cp -r ~/Downloads/igm-pa-consolidated-code-r10.1/*$i* $i ;
 git add . ; 
 git commit -m "adding test file" 
done


