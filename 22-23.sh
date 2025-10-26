cat /usr/bin/cronjob_bandit23.sh
#Output:
`#!/bin/bash

myname=$(whoami)
mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)

echo "Copying passwordfile /etc/bandit_pass/$myname to /tmp/$mytarget"

cat /etc/bandit_pass/$myname > /tmp/$mytarget
`

echo I am user bandit23 | md5sum | cut -d ' ' -f 1
#Output
#8ca319486bfbbc3663ea0fbe81326349

cat /tmp/8ca319486bfbbc3663ea0fbe81326349

#password:
0Zf11ioIjMVN551jX3CmStKLYqjk54Ga