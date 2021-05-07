#! /bin/bash -x

echo "Welcome to Employee Wage computation Program on Master branch"


a=$(( RANDOM%2 ))
echo $a
if [ $a -eq 1 ]
then
      echo "employee is present"
else
      echo "employee is absent"
fi
