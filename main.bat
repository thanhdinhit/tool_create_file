@echo off

set mypath=%~dp0
set folder_path=%mypath:~0,-1%

set folder_path_sub="sample"
set folder_path_output="output"

echo Type: [0: file *.py] , [1: file *.bat], [2: file *.txt]
echo Type: [3: file *.docx] , [4: file *.xlsx], [5: file *.pptx]
set /p "type=File Type: "
set /p "name=File Name: "

:start
IF %type%==0 (
    echo Create python file
    echo # %name%.py>%folder_path%\%folder_path_output%\%name%.py
    type "%folder_path%\%folder_path_sub%\sample.py" >> "%folder_path%\%folder_path_output%\%name%.py"
) ELSE IF %type%==1 (
    echo Create bat script file
    echo :: %name%.bat>%folder_path%\%folder_path_output%\%name%.bat
    type "%folder_path%\%folder_path_sub%\sample.bat" >> "%folder_path%\%folder_path_output%\%name%.bat"
) ELSE IF %type%==2 (
    echo Create text file
    echo hello>%folder_path%\%folder_path_output%\%name%.txt
) ELSE IF %type%==3 (
    echo Create word file
	copy NUL "%folder_path%\%folder_path_output%\%name%.docx"
) ELSE IF %type%==4 (
    echo Create excel file
	copy NUL "%folder_path%\%folder_path_output%\%name%.xlsx"
) ELSE IF %type%==5 (
    echo Create powerpoint file
	copy NUL "%folder_path%\%folder_path_output%\%name%.pptx"
) ELSE (
    echo Number in-correct
    set /p "type=type_number : "
    goto start
)