currentDate=$(date +'%s')
pendingDate=`date +'%s' -d "+$2 days"`
inputDate=$(date --date=$1 +'%s')

echo $currentDate
echo $pendingDate
echo $inputDate

if [ $inputDate -gt $currentDate ]; then
  echo "licenceStatus=valid" >> $GITHUB_ENV
elif [ $currentDate -ge $pendingDate ]; then
  echo "licenceStatus=expired" >> $GITHUB_ENV
else
  echo "licenceStatus=pending" >> $GITHUB_ENV
fi
