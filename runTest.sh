#!/bin/sh
#https://developer.github.com/guides/using-ssh-agent-forwarding/
#source ~/.bash_profile
source ~/.ssh/environment
#source ~/.bashrc

export DISPLAY=:0

cd /home/renaud/application/mine/UnitTestRolisteam/lib/rolisteam
git pull origin --quiet

cd /home/renaud/application/mine/UnitTestRolisteam/lib/diceparser
git pull origin --quiet


cd /home/renaud/application/mine/build-UnitTestRolisteam-Qt5_4-Debug
/home/renaud/application/other/qt5/qtbase/bin/qmake -r /home/renaud/application/mine/UnitTestRolisteam/UnitTestRolisteam.pro
make > /dev/null

find /home/renaud/application/mine/build-UnitTestRolisteam-Qt5_4-Debug -executable -type f -exec bash -c {} \;

cd /home/renaud/application/mine/svnToGit/rolisteam/
doxygen rolisteam.dox  > /dev/null 2>&1
