currentDateUnix=$(date +'%s')
inputDate=$(date --date=$1)
inputDateUnix=$(date --date=$1 +'%s')
pendingDateUnix=$(date +'%s' -d "$inputDate+$2 days")

echo "inputs $1 & $2"
echo $currentDateUnix
echo $pendingDateUnix
echo $inputDateUnix

if [ $inputDateUnix -gt $currentDateUnix ]; then
  echo "licenceStatus=valid" >> $GITHUB_ENV
elif [ $currentDateUnix -ge $pendingDateUnix ]; then
  echo "licenceStatus=expired" >> $GITHUB_ENV
else
  echo "licenceStatus=pending" >> $GITHUB_ENV
fi
