

currentDate=`date`
inputDate=$(date --date=$1 +%s)

echo $currentDate
echo $inputDate

$ [[ $currentDate < $inputDate ]] && echo it works
