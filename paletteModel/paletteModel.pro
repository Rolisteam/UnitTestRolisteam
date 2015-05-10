include(../UnitTestRolisteam.pri)

TARGET = tst_paletteModel
CONFIG   += console
CONFIG   -= app_bundle

QT += widgets gui

TEMPLATE = app

HEADERS += ../$$ROLISTEAMSRC/src/preferences/paletteModel.h

SOURCES += \
    tst_paletteModel.cpp \
    ../$$ROLISTEAMSRC/src/preferences/paletteModel.cpp

INCLUDEPATH += ../$$ROLISTEAMSRC/src/preferences/
#INCLUDEPATH += ../$$ROLISTEAMSRC/src/data/
#INCLUDEPATH += ../$$ROLISTEAMSRC/src/
