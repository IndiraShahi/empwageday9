#! /bin/bash -x

echo "Welcome to Employee Wage computation Program on Master branch"

IS_PRESENT_FULL_TIME=1
IS_PRESENT_PART_TIME=2
EMP_RATE_PER_HR=20
NO_OF_WORKING_DAYS=20
MAX_WORK_HOURS=80


totalWorkingDays=0
totalWorkingHours=0

function getWorkHrs(){
                local empCheck=$1
                local empHrs=0
                case $empCheck in
                $IS_PRESENT_FULL_TIME ) empHrs=8 ;;
                $IS_PRESENT_PART_TIME ) empHrs=4 ;;
                *) empHrs=0     ;;
         esac
         echo $empHrs
}
count=0
while [ $totalWorkingDays -lt $NO_OF_WORKING_DAYS ] && [ $totalWorkingHours -lt $MAX_WORK_HOURS ]

do
        empCheck=$(( RANDOM%3 ))
        totalWorkingDays=$(( $totalWorkingDays + 1 ))
        empHrs="$( getWorkHrs $empCheck )"
        totalWorkingHours=$(( $totalWorkingHours + $empHrs ))
done
echo "$totalWorkingHours: is total work hours"



