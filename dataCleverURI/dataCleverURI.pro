include(../UnitTestRolisteam.pri)


TARGET = tst_datacleveruritest
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app


HEADERS += ../$$ROLISTEAMSRC/src/data/cleveruri.h \
    ../$$ROLISTEAMSRC/src/preferences/preferencesmanager.h \
    ../$$ROLISTEAMSRC/src/data/resourcesnode.h \

SOURCES += \
    tst_datacleveruritest.cpp \
    ../$$ROLISTEAMSRC/src/preferences/preferencesmanager.cpp \
    ../$$ROLISTEAMSRC/src/data/cleveruri.cpp \
    ../$$ROLISTEAMSRC/src/data/resourcesnode.cpp \

INCLUDEPATH += ../$$ROLISTEAMSRC/src/data/ \
                ../$$ROLISTEAMSRC/src/
