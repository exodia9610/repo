clear
./remove.sh
./packages.sh

dpkg-scanpackages -m . /dev/null >Packages
bzip2 Packages
mv Packages.bz2 repo/
./repo/upload
