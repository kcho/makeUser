#!/bin/sh
for user in $@
do
    for server in M2 M3 mini
    do
        ssh root@server bash /ccnc_bin/makeUser/makeUser.sh ${i}
    done
done

#!/bin/sh
#for uSer in $@
#do
	##. /etc/rc.common
	#dscl . create /Users/${uSer}
	#dscl . create /Users/${uSer} RealName "${uSer}"
	#dscl . create /Users/${uSer} hint "Password Hint"
	##    dscl . create /Users/${uSer} picture "/Path/To/Picture.png"
	#dscl . passwd /Users/${uSer} 15981213
	#uniqueNum=`dscl . -list /Users UniqueID | sort -nr -k 2 | head -1 | awk '{print $2}'`
	#newNum=`expr $uniqueNum + 1`
	#dscl . create /Users/${uSer} UniqueID ${newNum}
	#dscl . create /Users/${uSer} PrimaryGroupID 20
	#dscl . create /Users/${uSer} UserShell /bin/bash
	#dscl . create /Users/${uSer} NFSHomeDirectory /Users/${uSer}
	#cp -R /System/Library/User\ Template/English.lproj /Users/${uSer}
	#chown -R ${uSer}:staff /Users/${uSer}
	#dscl . -append /Groups/admin GroupMembership ${uSer}
#done
