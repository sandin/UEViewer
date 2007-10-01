# Makefile for VisualC/win32 target
# This file was automatically generated from "UnLoader.project": do not edit

#------------------------------------------------------------------------------
#	Compiler definitions
#------------------------------------------------------------------------------

CPP  = cl.exe -nologo -c -D WIN32 -D _WINDOWS
LINK = link.exe -nologo -filealign:512 -incremental:no
AR   = link.exe -lib -nologo

#------------------------------------------------------------------------------
#	symbolic targets
#------------------------------------------------------------------------------

ALL : MAIN
MAIN : UnLoader.exe

#------------------------------------------------------------------------------
#	"UnLoader.exe" target
#------------------------------------------------------------------------------

MAIN = \
	obj/Main.obj \
	obj/UnCore.obj \
	obj/UnPackage.obj \
	obj/MeshViewer.obj \
	obj/VertMeshViewer.obj \
	obj/SkelMeshViewer.obj \
	obj/GlWindow.obj \
	obj/Math3D.obj

MAIN_DIRS = \
	obj

UnLoader.exe : $(MAIN_DIRS) $(MAIN)
	echo Creating executable "UnLoader.exe" ...
	$(LINK) -out:"UnLoader.exe" -libpath:"libs" $(MAIN) -subsystem:console

#------------------------------------------------------------------------------
#	compiling source files
#------------------------------------------------------------------------------

OPT_MAIN = -O1 -EHsc -I libs/include

DEPENDS = \
	Core.h \
	GlWindow.h \
	Math3D.h

obj/GlWindow.obj : GlWindow.cpp $(DEPENDS)
	$(CPP) -MD $(OPT_MAIN) -Fo"obj/GlWindow.obj" GlWindow.cpp

DEPENDS = \
	Core.h \
	GlWindow.h \
	Math3D.h \
	ObjectViewer.h \
	UnCore.h \
	UnMesh.h

obj/MeshViewer.obj : MeshViewer.cpp $(DEPENDS)
	$(CPP) -MD $(OPT_MAIN) -Fo"obj/MeshViewer.obj" MeshViewer.cpp

obj/SkelMeshViewer.obj : SkelMeshViewer.cpp $(DEPENDS)
	$(CPP) -MD $(OPT_MAIN) -Fo"obj/SkelMeshViewer.obj" SkelMeshViewer.cpp

obj/VertMeshViewer.obj : VertMeshViewer.cpp $(DEPENDS)
	$(CPP) -MD $(OPT_MAIN) -Fo"obj/VertMeshViewer.obj" VertMeshViewer.cpp

DEPENDS = \
	Core.h \
	GlWindow.h \
	Math3D.h \
	ObjectViewer.h \
	UnCore.h \
	UnMesh.h \
	UnPackage.h

obj/Main.obj : Main.cpp $(DEPENDS)
	$(CPP) -MD $(OPT_MAIN) -Fo"obj/Main.obj" Main.cpp

DEPENDS = \
	Core.h \
	Math3D.h

obj/Math3D.obj : Math3D.cpp $(DEPENDS)
	$(CPP) -MD $(OPT_MAIN) -Fo"obj/Math3D.obj" Math3D.cpp

DEPENDS = \
	Core.h \
	Math3D.h \
	UnCore.h

obj/UnCore.obj : UnCore.cpp $(DEPENDS)
	$(CPP) -MD $(OPT_MAIN) -Fo"obj/UnCore.obj" UnCore.cpp

DEPENDS = \
	Core.h \
	Math3D.h \
	UnCore.h \
	UnPackage.h

obj/UnPackage.obj : UnPackage.cpp $(DEPENDS)
	$(CPP) -MD $(OPT_MAIN) -Fo"obj/UnPackage.obj" UnPackage.cpp

#------------------------------------------------------------------------------
#	creating output directories
#------------------------------------------------------------------------------

obj:
	if not exist "obj" mkdir "obj"

