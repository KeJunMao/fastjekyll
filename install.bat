@echo off
:hello
title AutoInstall-Jekyll-Welcome!
echo ****************************
echo *    AutoInstall-Jekyll    *
echo *     Powered By KeJun     *
echo ****************************

pause

:checkruby
title: AutoInstall-Jekyll-Check Ruby
ruby -v

if errorlevel 9009 goto installruby

if errorlevel 0 goto checkjekyll

:checkjekyll
title: AutoInstall-Jekyll-Check Jekyll
jekyll -v 

if errorlevel 9009 goto installjekyll

if errorlevel 0 goto exitc

:installruby
title AutoInstall-Jekyll-Install Ruby24!
echo Install Ruby
pause
rubyinstaller-2.4.1-1-x86.exe /silent
cd C:\Ruby24\bin
ruby.exe -v

if errorlevel 9009 goto exits

if errorlevel 0 goto checkjekyll

:installjekyll

title Install Jekyll 3 and bundler!

echo Install Jekyll and bundler

pause

gem install bundler jekyll && pause

echo Jekyll 3 and bundler installed successfully!

:exits
echo Installation failure! 
pause

:exitc
echo Congratulations installed successfully! 
pause