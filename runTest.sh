#!/bin/sh

export DISPLAY=:0
find /home/renaud/application/mine/build-UnitTestRolisteam-Qt5_4-Debug -executable -type f -exec bash -c {} \;
