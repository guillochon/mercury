echo "Compiling mercury6 package"

ifort -O3 element6.for -o element6
ifort -O3 close6.for -o close6
ifort -O3 mercury6_2.for -o mercury6

echo "Create sample data files? (yes/no)"
read create_samples

if [ $create_samples = 'yes' ] ; then
  for i in *.sample; do
    cp $i `echo $i | sed 's/.sample//g'`
  done
fi
