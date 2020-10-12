today=`date +%Y_%m_%d`
folder=$(dirname $0)
cd $folder
mv "../logs/cubes.log" "../logs/${today}_cubes.log"
touch ../logs/cubes.log