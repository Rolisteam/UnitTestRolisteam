include(../UnitTestRolisteam.pri)

TARGET = tst_preferences
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

HEADERS += ../$$ROLISTEAMSRC/src/preferences/preferencesmanager.h


SOURCES += \
    tst_preferencestest.cpp \
    ../$$ROLISTEAMSRC/src/data/cleveruri.cpp \
    ../$$ROLISTEAMSRC/src/preferences/preferencesmanager.cpp

INCLUDEPATH += ../$$ROLISTEAMSRC/src/preferences/
INCLUDEPATH += ../$$ROLISTEAMSRC/src/data/
INCLUDEPATH += ../$$ROLISTEAMSRC/src/
