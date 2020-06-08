cp $1 oyente/$1_tmp
cp $1 mythril/$1_tmp
cp $1 manticore/$1_tmp

cd oyente
./run.sh $1_tmp
rm $1_tmp

cd ../mythril
./run.sh $1_tmp
rm $1_tmp

cd ../manticore
./run.sh $1_tmp
rm $1_tmp
