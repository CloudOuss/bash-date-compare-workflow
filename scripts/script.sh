

currentDate=date +%s
inputDate=$(date --date=$1 +%s)

#if [ $inputDate -ge $currentDate ]; #put the loop where you need it
#then
# echo "licenceExpired=[ $inputDate -ge $currentDate ]" >> $GITHUB_ENV
# else
#  echo "licenceExpired=true" >> $GITHUB_ENV
#fi

echo "licenceExpired=[ $inputDate -ge $currentDate ]" >> $GITHUB_ENV
