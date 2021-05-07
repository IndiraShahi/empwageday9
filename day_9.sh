#! /bin/bash -x

echo "Welcome to Employee Wage computation Program on Master branch"

Wage_Per_Hour=20
Max_Work_Hour=40
Part_Time_Employee=1
Full_Time_Employee=2
No_Of_Working_Days=5
totalWorkingDays=0
totalWorkingHours=0
while [ $totalWorkingDays -lt $No_Of_Working_Days ] && [ $totalWorkingHours -lt $Max_Work_Hour ]
do
empCheck=$(( RANDOM%3 ))
totalWorkingDays=$(( $totalWorkingDays + 1 ))
case $empCheck in
        $Part_Time_Employee)
                empHrs=8   ;;
        $Full_Time_Employee)
                empHrs=4   ;;
        *)
                empHrs=0   ;;
esac
totalWorkingHours=$(( $totalWorkingHours + $empHrs ))
done
salary=$(( $empHrs * $Wage_Per_Hour ))
echo $salary
