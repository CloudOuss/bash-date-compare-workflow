echo "input date: $1"
echo "current date: `date`"

currentDate=`date`
inputDate=$(date --date=${{ github.event.inputs.inputDate }} +%s)

echo $currentDate
echo $inputDate

[ $currentDate -gt $inputDate ]
echo $?
