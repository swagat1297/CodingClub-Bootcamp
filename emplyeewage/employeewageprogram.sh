#1 /bin/bash -x

#CONSTANT
IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=32
WAGE_PER_HOUR=20
NUM_WORKING_DAYS=8

function getWorkHours() {
	case $1 in
		$IS_PART_TIME) workHours=4;;
		$IS_FULL_TIME) workHours=8;;
		*)		workHours=0;;
	esac
	echo $workHours
}
while [ $totalWorkingHours -lt $MAX_HRS_IN_MONTH ] && [ $totalWorkingDays -lt $NUM_WORKING_DAYS ]
do
	((totalWorkingDays++))
		worHours="$( getWorkingHours $((RANDOM%3)) )"
		totalWorkingHours=$(( $totalorkingHours + $workHours ))
		dailyWage[$totalWorkingDays]=$(($workHours*$EMP_RATE_PER_HOUR))
done
totalSalary=$(($totalWorkingHours*$EMP_RATE_PER_HOUR))
echo "Monthly Salary of a person" $totalsalary
