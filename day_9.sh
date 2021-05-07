#! /bin/bash -x

echo "Welcome to Employee Wage computation Program on Master branch"

Wage_Per_Hour=20
Full_Day_Hour=8
a=$(( RANDOM%2 ))
echo $a
if [ $a -eq 1 ]
then
      echo "employee is present"
else
      echo "employee is absent"
fi
salary=$(( $Wage_Per_Hour * $Full_Day_Hour ))
echo $salary
