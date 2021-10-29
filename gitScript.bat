@echo off

echo Put this file in the source of your GIT repository
git status
pause
cls
echo Quick Tips :
echo I suggest pulling at each start of session so you don't overide other people's work ! 
pause
:start
cls
echo If you want to pull press 1
echo If you want to push all press 2
echo If you want repository status press 3
echo If you want to exit press 'Q'
set /p choicevar=Your choice : 
if %choicevar%==1 goto pull
if %choicevar%==2 goto push
if %choicevar%==3 goto status
if %choicevar%==q goto exitP
if %choicevar%==Q goto exitP


goto start
:pull
git pull
echo Pulled
pause
goto start
:push
echo Enter comment for commit
set /p commentvar=Your comment : 

git add .
git commit -m "%commentvar%"
git push
echo Pushed
pause
goto start
:status
git status
pause
goto start
:exitP
exit
