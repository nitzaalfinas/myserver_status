#!/bin/bash
output=$(curl -I http://myserver.com)
hasil=${output:0:15}
if [ "${hasil}" != "HTTP/1.1 200 OK" ];

then

# send mail
From="info@myserver.com"
To="mymail@something.com"
Subject="server down"
Msg="Server is down boy!"
cat <<EOF | sendmail -i -t
From: $From
To: $To
Subject: $Subject
$Msg
EOF
#echo "server down"

else

# do something here or just uncomment below line
#echo "server active"

fi

