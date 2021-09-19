currentDate=$(date +'%s')
pendingDate=`date +'%s' -d "+$2 days"`
inputDate=$(date --date=$1 +'%s')

echo $currentDate
echo $pendingDate
echo $inputDate

if [ $pendingDate -ge $inputDate ]; then
  echo "licenceStatus=expired" >> $GITHUB_ENV
elif [ $currentDate -ge $inputDate ]; then
  echo "licenceStatus=pending" >> $GITHUB_ENV
else
  echo "licenceStatus=valid" >> $GITHUB_ENV
fi
