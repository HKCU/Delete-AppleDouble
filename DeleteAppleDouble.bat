echo off

REM
REM  Delete the AppleDouble folders
REM  Usage: Change 'H:\username\Music' to the required directory and run by double-clicking on the batch file's icon
REM

echo echo off > c:\temp\deletes.bat
for /r "H:\username\Music" %%X in (.AppleDouble) do (
	If exist "%%X" (
		echo rmdir /q "%%X" >> c:\temp\deletes.bat
	)
)
CALL C:\temp\deletes.bat

type C:\temp\deletes.bat
echo Done!  All the .AppleDouble folders (together with their contents) in the selected directory tree have now been deleted!

pause
