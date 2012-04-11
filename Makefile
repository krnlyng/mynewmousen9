#############################################################################
# Makefile for building: mynewmousec
# Generated by qmake (2.01a) (Qt 4.7.4) on: Wed Apr 11 03:04:29 2012
# Project:  mynewmousec.pro
# Template: app
# Command: /usr/bin/qmake -o Makefile mynewmousec.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DHARMATTAN_BOOSTER -DQT_NO_DEBUG -DQT_DECLARATIVE_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -O2 -g -Wno-psabi -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -O2 -g -Wno-psabi -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/linux-g++-maemo -I. -I/targets/HARMATTAN_ARMEL/usr/include/qt4/QtCore -I/targets/HARMATTAN_ARMEL/usr/include/qt4/QtGui -I/targets/HARMATTAN_ARMEL/usr/include/qt4/QtDeclarative -I/targets/HARMATTAN_ARMEL/usr/include/qt4 -Iqmlapplicationviewer -I/../../../usr/include -I/../../../usr/include -I.
LINK          = g++
LFLAGS        = -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib -L/home/liar/n9isawsmc/../../../../../../usr/lib/ -lsfml-network -lsfml-system -lQtDeclarative -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		connection.cpp \
		qmlapplicationviewer/qmlapplicationviewer.cpp moc_qmlapplicationviewer.cpp \
		moc_connection.cpp
OBJECTS       = main.o \
		connection.o \
		qmlapplicationviewer.o \
		moc_qmlapplicationviewer.o \
		moc_connection.o
DIST          = /targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/g++.conf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/unix.conf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/linux.conf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/qconfig.pri \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt_config.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/default_pre.prf \
		qmlapplicationviewer/qmlapplicationviewer.pri \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/release.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/default_post.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/warn_on.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/moc.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/resources.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/uic.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/yacc.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/lex.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		mynewmousec.pro
QMAKE_TARGET  = mynewmousec
DESTDIR       = 
TARGET        = mynewmousec

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: mynewmousec.pro  /targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/linux-g++-maemo/qmake.conf /targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/g++.conf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/unix.conf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/linux.conf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/qconfig.pri \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt_config.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/default_pre.prf \
		qmlapplicationviewer/qmlapplicationviewer.pri \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/release.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/default_post.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/warn_on.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/moc.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/resources.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/uic.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/yacc.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/lex.prf \
		/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/libQtDeclarative.prl \
		/usr/lib/libQtGui.prl \
		/usr/lib/libQtCore.prl
	$(QMAKE) -o Makefile mynewmousec.pro
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/g++.conf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/unix.conf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/common/linux.conf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/qconfig.pri:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt_functions.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt_config.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/default_pre.prf:
qmlapplicationviewer/qmlapplicationviewer.pri:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/release.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/default_post.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/warn_on.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/qt.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/unix/thread.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/moc.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/resources.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/uic.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/yacc.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/lex.prf:
/targets/HARMATTAN_ARMEL/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/libQtDeclarative.prl:
/usr/lib/libQtGui.prl:
/usr/lib/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile mynewmousec.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/mynewmousec1.0.0 || $(MKDIR) .tmp/mynewmousec1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/mynewmousec1.0.0/ && $(COPY_FILE) --parents qmlapplicationviewer/qmlapplicationviewer.h connection.h .tmp/mynewmousec1.0.0/ && $(COPY_FILE) --parents main.cpp connection.cpp qmlapplicationviewer/qmlapplicationviewer.cpp .tmp/mynewmousec1.0.0/ && (cd `dirname .tmp/mynewmousec1.0.0` && $(TAR) mynewmousec1.0.0.tar mynewmousec1.0.0 && $(COMPRESS) mynewmousec1.0.0.tar) && $(MOVE) `dirname .tmp/mynewmousec1.0.0`/mynewmousec1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/mynewmousec1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_qmlapplicationviewer.cpp moc_connection.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_qmlapplicationviewer.cpp moc_connection.cpp
moc_qmlapplicationviewer.cpp: qmlapplicationviewer/qmlapplicationviewer.h
	/usr/bin/moc $(DEFINES) $(INCPATH) qmlapplicationviewer/qmlapplicationviewer.h -o moc_qmlapplicationviewer.cpp

moc_connection.cpp: /../../../usr/include/SFML/Network.hpp \
		/../../../usr/include/SFML/System.hpp \
		/../../../usr/include/SFML/Config.hpp \
		/../../../usr/include/SFML/System/Clock.hpp \
		/../../../usr/include/SFML/System/Export.hpp \
		/../../../usr/include/SFML/System/Time.hpp \
		/../../../usr/include/SFML/System/Err.hpp \
		/../../../usr/include/SFML/System/InputStream.hpp \
		/../../../usr/include/SFML/System/Lock.hpp \
		/../../../usr/include/SFML/System/NonCopyable.hpp \
		/../../../usr/include/SFML/System/Mutex.hpp \
		/../../../usr/include/SFML/System/Sleep.hpp \
		/../../../usr/include/SFML/System/String.hpp \
		/../../../usr/include/SFML/System/Thread.hpp \
		/../../../usr/include/SFML/System/Thread.inl \
		/../../../usr/include/SFML/System/ThreadLocal.hpp \
		/../../../usr/include/SFML/System/ThreadLocalPtr.hpp \
		/../../../usr/include/SFML/System/ThreadLocalPtr.inl \
		/../../../usr/include/SFML/System/Utf.hpp \
		/../../../usr/include/SFML/System/Utf.inl \
		/../../../usr/include/SFML/System/Vector2.hpp \
		/../../../usr/include/SFML/System/Vector2.inl \
		/../../../usr/include/SFML/System/Vector3.hpp \
		/../../../usr/include/SFML/System/Vector3.inl \
		/../../../usr/include/SFML/Network/Ftp.hpp \
		/../../../usr/include/SFML/Network/Export.hpp \
		/../../../usr/include/SFML/Network/TcpSocket.hpp \
		/../../../usr/include/SFML/Network/Socket.hpp \
		/../../../usr/include/SFML/Network/SocketHandle.hpp \
		/../../../usr/include/SFML/Network/Http.hpp \
		/../../../usr/include/SFML/Network/IpAddress.hpp \
		/../../../usr/include/SFML/Network/Packet.hpp \
		/../../../usr/include/SFML/Network/SocketSelector.hpp \
		/../../../usr/include/SFML/Network/TcpListener.hpp \
		/../../../usr/include/SFML/Network/UdpSocket.hpp \
		connection.h
	/usr/bin/moc $(DEFINES) $(INCPATH) connection.h -o moc_connection.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

####### Compile

main.o: main.cpp connection.h \
		/../../../usr/include/SFML/Network.hpp \
		/../../../usr/include/SFML/System.hpp \
		/../../../usr/include/SFML/Config.hpp \
		/../../../usr/include/SFML/System/Clock.hpp \
		/../../../usr/include/SFML/System/Export.hpp \
		/../../../usr/include/SFML/System/Time.hpp \
		/../../../usr/include/SFML/System/Err.hpp \
		/../../../usr/include/SFML/System/InputStream.hpp \
		/../../../usr/include/SFML/System/Lock.hpp \
		/../../../usr/include/SFML/System/NonCopyable.hpp \
		/../../../usr/include/SFML/System/Mutex.hpp \
		/../../../usr/include/SFML/System/Sleep.hpp \
		/../../../usr/include/SFML/System/String.hpp \
		/../../../usr/include/SFML/System/Thread.hpp \
		/../../../usr/include/SFML/System/Thread.inl \
		/../../../usr/include/SFML/System/ThreadLocal.hpp \
		/../../../usr/include/SFML/System/ThreadLocalPtr.hpp \
		/../../../usr/include/SFML/System/ThreadLocalPtr.inl \
		/../../../usr/include/SFML/System/Utf.hpp \
		/../../../usr/include/SFML/System/Utf.inl \
		/../../../usr/include/SFML/System/Vector2.hpp \
		/../../../usr/include/SFML/System/Vector2.inl \
		/../../../usr/include/SFML/System/Vector3.hpp \
		/../../../usr/include/SFML/System/Vector3.inl \
		/../../../usr/include/SFML/Network/Ftp.hpp \
		/../../../usr/include/SFML/Network/Export.hpp \
		/../../../usr/include/SFML/Network/TcpSocket.hpp \
		/../../../usr/include/SFML/Network/Socket.hpp \
		/../../../usr/include/SFML/Network/SocketHandle.hpp \
		/../../../usr/include/SFML/Network/Http.hpp \
		/../../../usr/include/SFML/Network/IpAddress.hpp \
		/../../../usr/include/SFML/Network/Packet.hpp \
		/../../../usr/include/SFML/Network/SocketSelector.hpp \
		/../../../usr/include/SFML/Network/TcpListener.hpp \
		/../../../usr/include/SFML/Network/UdpSocket.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

connection.o: connection.cpp connection.h \
		/../../../usr/include/SFML/Network.hpp \
		/../../../usr/include/SFML/System.hpp \
		/../../../usr/include/SFML/Config.hpp \
		/../../../usr/include/SFML/System/Clock.hpp \
		/../../../usr/include/SFML/System/Export.hpp \
		/../../../usr/include/SFML/System/Time.hpp \
		/../../../usr/include/SFML/System/Err.hpp \
		/../../../usr/include/SFML/System/InputStream.hpp \
		/../../../usr/include/SFML/System/Lock.hpp \
		/../../../usr/include/SFML/System/NonCopyable.hpp \
		/../../../usr/include/SFML/System/Mutex.hpp \
		/../../../usr/include/SFML/System/Sleep.hpp \
		/../../../usr/include/SFML/System/String.hpp \
		/../../../usr/include/SFML/System/Thread.hpp \
		/../../../usr/include/SFML/System/Thread.inl \
		/../../../usr/include/SFML/System/ThreadLocal.hpp \
		/../../../usr/include/SFML/System/ThreadLocalPtr.hpp \
		/../../../usr/include/SFML/System/ThreadLocalPtr.inl \
		/../../../usr/include/SFML/System/Utf.hpp \
		/../../../usr/include/SFML/System/Utf.inl \
		/../../../usr/include/SFML/System/Vector2.hpp \
		/../../../usr/include/SFML/System/Vector2.inl \
		/../../../usr/include/SFML/System/Vector3.hpp \
		/../../../usr/include/SFML/System/Vector3.inl \
		/../../../usr/include/SFML/Network/Ftp.hpp \
		/../../../usr/include/SFML/Network/Export.hpp \
		/../../../usr/include/SFML/Network/TcpSocket.hpp \
		/../../../usr/include/SFML/Network/Socket.hpp \
		/../../../usr/include/SFML/Network/SocketHandle.hpp \
		/../../../usr/include/SFML/Network/Http.hpp \
		/../../../usr/include/SFML/Network/IpAddress.hpp \
		/../../../usr/include/SFML/Network/Packet.hpp \
		/../../../usr/include/SFML/Network/SocketSelector.hpp \
		/../../../usr/include/SFML/Network/TcpListener.hpp \
		/../../../usr/include/SFML/Network/UdpSocket.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o connection.o connection.cpp

qmlapplicationviewer.o: qmlapplicationviewer/qmlapplicationviewer.cpp qmlapplicationviewer/qmlapplicationviewer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qmlapplicationviewer.o qmlapplicationviewer/qmlapplicationviewer.cpp

moc_qmlapplicationviewer.o: moc_qmlapplicationviewer.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_qmlapplicationviewer.o moc_qmlapplicationviewer.cpp

moc_connection.o: moc_connection.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_connection.o moc_connection.cpp

####### Install

install_itemfolder_01: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/opt/mynewmousec/qml/ || $(MKDIR) $(INSTALL_ROOT)/opt/mynewmousec/qml/ 
	-$(INSTALL_DIR) /home/liar/n9isawsmc/qml/mynewmousec $(INSTALL_ROOT)/opt/mynewmousec/qml/


uninstall_itemfolder_01:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/opt/mynewmousec/qml/mynewmousec
	-$(DEL_DIR) $(INSTALL_ROOT)/opt/mynewmousec/qml/ 


install_icon: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/share/icons/hicolor/80x80/apps/ || $(MKDIR) $(INSTALL_ROOT)/usr/share/icons/hicolor/80x80/apps/ 
	-$(INSTALL_FILE) /home/liar/n9isawsmc/mynewmousec80.png $(INSTALL_ROOT)/usr/share/icons/hicolor/80x80/apps/


uninstall_icon:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/share/icons/hicolor/80x80/apps/mynewmousec80.png
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/share/icons/hicolor/80x80/apps/ 


install_desktopfile: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/usr/share/applications/ || $(MKDIR) $(INSTALL_ROOT)/usr/share/applications/ 
	-$(INSTALL_FILE) /home/liar/n9isawsmc/mynewmousec_harmattan.desktop $(INSTALL_ROOT)/usr/share/applications/


uninstall_desktopfile:  FORCE
	-$(DEL_FILE) -r $(INSTALL_ROOT)/usr/share/applications/mynewmousec_harmattan.desktop
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/share/applications/ 


install_target: first FORCE
	@$(CHK_DIR_EXISTS) $(INSTALL_ROOT)/opt/mynewmousec/bin/ || $(MKDIR) $(INSTALL_ROOT)/opt/mynewmousec/bin/ 
	-$(INSTALL_PROGRAM) "$(QMAKE_TARGET)" "$(INSTALL_ROOT)/opt/mynewmousec/bin/$(QMAKE_TARGET)"

uninstall_target:  FORCE
	-$(DEL_FILE) "$(INSTALL_ROOT)/opt/mynewmousec/bin/$(QMAKE_TARGET)"
	-$(DEL_DIR) $(INSTALL_ROOT)/opt/mynewmousec/bin/ 


install:  install_itemfolder_01 install_icon install_desktopfile install_target  FORCE

uninstall: uninstall_itemfolder_01 uninstall_icon uninstall_desktopfile uninstall_target   FORCE

FORCE:
