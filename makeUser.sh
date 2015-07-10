#!/bin/sh
for uSer in $@
do
	#. /etc/rc.common
	dscl . create /Users/${uSer}
	dscl . create /Users/${uSer} RealName "${uSer} Account"
	dscl . create /Users/${uSer} hint "Password Hint"
	#    dscl . create /Users/${uSer} picture "/Path/To/Picture.png"
	dscl . passwd /Users/${uSer} 15981213
	#dscl . create /Users/${uSer} UniqueID 501
	dscl . create /Users/${uSer} PrimaryGroupID 20
	dscl . create /Users/${uSer} UserShell /bin/bash
	dscl . create /Users/${uSer} NFSHomeDirectory /Users/${uSer}
	cp -R /System/Library/User\ Template/English.lproj /Users/${uSer}
	chown -R ${uSer}:staff /Users/${uSer}
	dscl . -append /Groups/admin GroupMembership ${uSer}
done
