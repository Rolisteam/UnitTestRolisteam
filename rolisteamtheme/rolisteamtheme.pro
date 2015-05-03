include(../UnitTestRolisteam.pri)

TARGET = tst_rolisteamtheme
CONFIG   += console
CONFIG   -= app_bundle

QT += widgets gui

TEMPLATE = app

HEADERS += ../$$ROLISTEAMSRC/src/preferences/rolisteamtheme.h

SOURCES += \
    tst_rolisteamtheme.cpp \
    ../$$ROLISTEAMSRC/src/preferences/rolisteamtheme.cpp

INCLUDEPATH += ../$$ROLISTEAMSRC/src/preferences/
INCLUDEPATH += ../$$ROLISTEAMSRC/src/data/
INCLUDEPATH += ../$$ROLISTEAMSRC/src/

QT += widgets gui
QT += testlib
