echo %local_path%\cppcheker\
IF exist .\cppcheker\NUL (
	echo "Cppchecker is already downloaded"
) else (
	git clone -b 2.9 https://github.com/danmar/cppcheck.git cppchecker
cd ./cppchecker
"C:\Program Files\Microsoft Visual Studio\2022\Professional\MSBuild\Current\Bin\amd64\MSBuild.exe" cppcheck.sln
cd ..
)
.\cppchecker\bin\debug\cppcheck.exe ./src --error-exitcode=127 --enable=all
