currentDate=$(date +'%s')
pendingDate=`date +'%s' -d "+$2 days"`
inputDate=$(date --date=$1 +'%s')

if [ $currentDate -ge $inputDate ];
then
  if [ $currentDate -ge $pendingDate ];
  then
    echo "licenceStatus=expired" >> $GITHUB_ENV
  else
    echo "licenceStatus=pending" >> $GITHUB_ENV
  fi
else
 echo "licenceStatus=valid" >> $GITHUB_ENV
fi
