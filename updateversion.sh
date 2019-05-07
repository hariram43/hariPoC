#AUTHOR : Aromal 
set -x
if [ -d temp ]; then
rm -rf temp
mkdir temp
else
mkdir temp
fi
cd temp
git clone https://aromalraj123:Creative_05@arj-jobconsultancy.visualstudio.com/_git/poc -b version
cd poc
current_version=`cat version.txt | grep version | awk -F'=' '{ print $2 }'`
first=`cat version.txt | grep version | awk -F'=' '{ print $2 }'| awk -F'.' '{ print $1 }'`
build_no=`cat version.txt | grep version | awk -F'=' '{ print $2 }'| awk -F'.' '{ print $2 }'`
build_no=$(($build_no+1))
new_version=$first.$build_no
echo "$new_version is the new version"
#source="project_version"
sed -i  's^'"$current_version"'^'"$new_version"'^g' version.txt
git add version.txt
git commit -m " updated version to $new_version"
git push