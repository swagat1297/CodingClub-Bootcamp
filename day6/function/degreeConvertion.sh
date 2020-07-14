#!/bin/bash -x

echo "enter choice: 1. *C to *F 2. *F to *C" 
read c
read -p "enter Temperature" T


ConvertionF() {
        ((degF=degC * 9/5))
        ((degF=degF + 32))
}
ConvertionC() {
        ((degC=degF - 32))
        ((degC=degC * 9/5))
}


case $c in
	1)
		if [ $T -lt 1 ]
		then
			echo "Temperature below freezing point"
			exit
		elif [ $T -gt 99 ]
		then
			echo "Temperature Boiling poit"
			exit
		else
			degC=$T
			ConvertionF
			echo "the value:" $degF

		fi
		;;
	2)
                if [ $T -lt 33 ]
                then
                        echo "Temperature below freezing point"
                        exit
                elif [ $T -gt 211 ]
                then
                        echo "Temperature Boiling poit"
                        exit
                else
                        degF=$T
                        ConvertionC
                        echo "the value:" $degC

                fi
                ;;

	*)
		echo "wrong input" ;;
esac

