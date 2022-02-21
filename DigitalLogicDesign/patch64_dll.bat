@echo off
attrib -r mgls.dll
attrib -r mgls64.dll
MentorKG.exe -patch . 
attrib +r mgls.dll
attrib +r mgls64.dll

pause