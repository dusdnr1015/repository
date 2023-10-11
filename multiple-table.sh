#! /bin/bash
args_1=${1}
args_2=${2}

if [ -z "$args_1" ] || [ -z "$args_2" ] ; then
        echo "Invalid input"
elif [ "$args_1" -le 0 ] || [ "$args_2" -le 0 ] ; then
        echo "Input must be greater than 0"
else
        result=0
        for((i=1;i<=args_1;i++))
        do
                for((j=1;j<=args_2;j++))
                do
                        result=`expr $j \* $i`
                        echo -n -e  "$i * $j = $result \t "
                done

                echo " "
        done
fi
exit 0
