#this is the script that covers other scripts
#first cd to the folder
#XXX Assume we are in the github ipping folder
git pull

#now we have the updated ip
ip=`cat bipin_laptop | perl -ne 'if(/([0-9\.]+)/){print $1;}'`


#Normally we use the below line. ( change port  )
#ssh -o "ExitOnForwardFailure yes" -o "StrictHostKeyChecking no" -N -R 33033:localhost:22 ssh_user@$ip

#here we use another server as remote
ssh -o "ExitOnForwardFailure yes" -o "StrictHostKeyChecking no" -N -R 33033:10.0.16.6:22 ssh_user@$ip
