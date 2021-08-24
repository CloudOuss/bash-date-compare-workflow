

currentDate= $(date --date=`date` +%s)
inputDate=date +%s

echo $currentDate
echo $inputDate

if [ $inputDate -ge $currentDate ]; #put the loop where you need it
then
 echo 'yes';
 else
  echo 'no';
fi
