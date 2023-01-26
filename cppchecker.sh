#!/bin/bash
if [ -d "./cppcheker" ]
then
	echo "Cppchecker is already downloaded"
else
	git clone -b 2.9 https://github.com/danmar/cppcheck.git cppchecker

fi
cd ./cppchecker
mkdir build
cd build
cmake ..
cmake --build .
cd ../..
echo "Cppchecker is build successfully. Now it is time to validate the code..."
./cppchecker/build/bin/cppcheck ./src
