

currentDate=`date`
inputDate=$(date --date=$1 +%s)

echo $currentDate
echo $inputDate

if [ $inputDate -ge $currentDate ]; #put the loop where you need it
then
 echo 'yes';
 else
  echo 'yes';
fi
