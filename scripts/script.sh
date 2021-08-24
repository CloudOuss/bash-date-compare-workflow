echo "input date: $1"
echo "current date: `date`"

currentDate=`date`
inputDate=$(date --date='2000-01-01' +%s)

echo $currentDate
echo $inputDate

[ $currentDate -gt $inputDate ]
echo $?
