@echo off
set WORK_DIR=%~dp0
set TARGET_FOLDER=%WORK_DIR%BackupMachineFolder

REM Downloads Folder
if not exist %TARGET_FOLDER%\Downloads (
	mkdir %TARGET_FOLDER%\Downloads
)

pushd %userprofile%\Downloads
xcopy /d /s /e * /y %TARGET_FOLDER%\Downloads 
popd

REM Desktop Folder
if not exist %TARGET_FOLDER%\Desktop (
	mkdir %TARGET_FOLDER%\Desktop
)

pushd %userprofile%\Desktop
xcopy /d /s /e * /y %TARGET_FOLDER%\Desktop 
popd

REM Documents Folder
if not exist %TARGET_FOLDER%\Documents (
	mkdir %TARGET_FOLDER%\Documents
)

pushd %userprofile%\Documents
xcopy /d /s /e * /y %TARGET_FOLDER%\Documents 
popd

REM C:\Merge Folder
if not exist %TARGET_FOLDER%\MergeFolder (
	mkdir %TARGET_FOLDER%\MergeFolder
)

pushd c:\MergeFolder
xcopy /d /s /e * /y %TARGET_FOLDER%\MergeFolder
popd

pause