TARGET = echo-client
TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt
LIBS += -pthread
DESTDIR = $${PWD}/../bin
SOURCES += tc.cpp
win32 {
	SOURCES += ../mingw_net.cpp
	HEADERS += ../mingw_net.h
	LIBS += -lws2_32
}
