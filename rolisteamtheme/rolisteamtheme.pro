include(../UnitTestRolisteam.pri)

TARGET = tst_preferences
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

HEADERS += ../$$ROLISTEAMSRC/src/preferences/rolisteamtheme.h

SOURCES += \
    tst_rolisteamtheme.cpp \
    ../$$ROLISTEAMSRC/src/preferences/rolisteamtheme.cpp

INCLUDEPATH += ../$$ROLISTEAMSRC/src/preferences/
INCLUDEPATH += ../$$ROLISTEAMSRC/src/data/
INCLUDEPATH += ../$$ROLISTEAMSRC/src/
