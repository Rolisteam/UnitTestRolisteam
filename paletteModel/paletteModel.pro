include(../UnitTestRolisteam.pri)

TARGET = tst_paletteModel
CONFIG   += console
CONFIG   -= app_bundle

QT += widgets gui

TEMPLATE = app

HEADERS += ../$$ROLISTEAMSRC/src/preferences/palettemodel.h

SOURCES += \
    tst_paletteModel.cpp \
    ../$$ROLISTEAMSRC/src/preferences/palettemodel.cpp

INCLUDEPATH += ../$$ROLISTEAMSRC/src/preferences/
#INCLUDEPATH += ../$$ROLISTEAMSRC/src/data/
#INCLUDEPATH += ../$$ROLISTEAMSRC/src/
