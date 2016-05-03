#-------------------------------------------------
#
# Project created by QtCreator 2015-03-22T19:52:02
#
#-------------------------------------------------

QT       -= core

QT       -= gui

TARGET = DenseFace3D
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

QMAKE_CXXFLAGS += \
    -std=c++0x

DESTDIR = ../../bin

INCLUDEPATH += \
    ../include \
    ../3rdparty/dlib-18.17

INCLUDEPATH += \
    /usr/local/include/opencv2 \
    /usr/local/include/opencv \
    /usr/local/include \
    /usr/include/boost \
    /usr/include/eigen3

# lib-boost
LIBS += \
    -lboost_filesystem -lboost_system -lboost_thread -lboost_program_options

# lib-opencv 2.4.11
LIBS += \
    -L/usr/local/lib -lopencv_core -lopencv_highgui -lopencv_imgproc

# 与makefile的相对路径
LIBS += \
    ../../3rdparty/dlib-18.17/libdlib.a

# lib-opengl
LIBS += \
    -lGL -lGLU -lglut

HEADERS += \
    ../include/ThinPlateSpline.h \
    ../include/targetver.h \
    ../include/stdafx.h \
    ../include/samplePoint.h \
    ../include/OGL_OCV_common.h \
    ../include/ludecomposition.h \
    ../include/linalg3d.h \
    ../include/glm.h

SOURCES += \
    ../src/stdafx.cpp \
    ../src/samplePoint.cpp \
    ../src/readcsv.cpp \
    ../src/OGL_OCV_common.cpp \
    ../src/glm.cpp \
    ../src/DenseFace3D.cpp

OTHER_FILES += \
    ../share/shape_predictor_68_face_landmarks.dat \
    ../share/landmark.txt \
    ../share/conn.txt
