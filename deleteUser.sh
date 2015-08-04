for i in $@

do

    echo ${i}
    dscl . -delete /Users/${i}

done
