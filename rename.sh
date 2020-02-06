a=1
for i in *.xml; do
  newName=$(printf "osama%3d.xml" "$a") #03 = Amount of 0 Padding you want to add
  mv -i --  "$newName" "$i"
  let a=a+1
done
for oldname in *; do newname=`echo $oldname | sed -e 's/ //g'`; mv "$oldname" "$newname";done
