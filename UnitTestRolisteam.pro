TEMPLATE = subdirs

#include(TestUnitRolisteamV1.pri)
DEFINES =DSTDIR=$$SRCDIR
SUBDIRS = \
    Dice \
#    dataChapter \ #chat MainWindow  picture   map Dice
 #   dataCleverURI \
  #  dataplayer \
   # dataCharacter \
    #networkServer \
    #picture \

OBJECTS_DIR = obj
OTHER_FILES = UnitTestRolisteam.pri





