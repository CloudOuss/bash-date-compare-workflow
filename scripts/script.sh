

currentDate=$(date +"%s")
inputDate=$(date --date=$1 +"%s")

echo $curentDate
echo $inputDate

if [ $inputDate -ge $currentDate ]; #put the loop where you need it
then
 echo "licenceExpired=[ $inputDate -ge $currentDate ]" >> $GITHUB_ENV
else
 echo "licenceExpired=true" >> $GITHUB_ENV
fi

res=[ $inputDate -ge $currentDate ]
echo res
