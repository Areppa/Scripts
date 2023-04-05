REM This needs to be run as administrator

set link="D:\Linked folder"
set real_files="D:\Read files"

mklink /D %link% %real_files%