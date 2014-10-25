QT       += core gui

QMAKE_CXXFLAGS += -std=c++11

# add xenon library and includes
android {
LIBS += -L$$(ANDROID_XENON_LIB) -lxenon
INCLUDEPATH += $$(ANDROID_XENON_LIB)/../../xenon
ANDROID_EXTRA_LIBS += $$(ANDROID_XENON_LIB)/libxenon.so
# ANDROID_PACKAGE_SOURCE_DIR = /Users/Mark/work/decoder/dist
ANDROID_PACKAGE_SOURCE_DIR = /home/mark/work/decoder/dist
}

macx|linux {
LIBS += -L$$(IMSDIR)/o -lxenon
INCLUDEPATH += $$(ANDROID_XENON_LIB)/../../xenon

}

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Decoder
TEMPLATE = app


SOURCES += main.cpp\
        decoder.cpp

HEADERS  += decoder.h

FORMS    += decoder.ui

CONFIG += mobility
MOBILITY = 

