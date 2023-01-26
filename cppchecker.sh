if [-d "./cppcheker"]
then
	git clone -b 2.9 https://github.com/danmar/cppcheck.git cppchecker
else
	echo "Cppchecker is already downloaded"
fi
cd ./cppchecker
mkdir build
cd build
cmake ..
cmake --build .
cd ../..
echo "Cppchecker is build successfully. Now it is time to validate the code..."
./cppchecker/build/bin/cppcheck ./src
