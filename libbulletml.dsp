# Microsoft Developer Studio Project File - Name="libbulletml" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** �ҏW���Ȃ��ł������� **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=libbulletml - Win32 Debug
!MESSAGE ����͗L����Ҳ�̧�قł͂���܂���B ������ۼު�Ă�����ނ��邽�߂ɂ� NMAKE ���g�p���Ă��������B
!MESSAGE [Ҳ�̧�ق̴���߰�] ����ނ��g�p���Ď��s���Ă�������
!MESSAGE 
!MESSAGE NMAKE /f "libbulletml.mak".
!MESSAGE 
!MESSAGE NMAKE �̎��s���ɍ\�����w��ł��܂�
!MESSAGE ����� ײݏ��ϸۂ̐ݒ���`���܂��B��:
!MESSAGE 
!MESSAGE NMAKE /f "libbulletml.mak" CFG="libbulletml - Win32 Debug"
!MESSAGE 
!MESSAGE �I���\������� Ӱ��:
!MESSAGE 
!MESSAGE "libbulletml - Win32 Release" ("Win32 (x86) Static Library" �p)
!MESSAGE "libbulletml - Win32 Debug" ("Win32 (x86) Static Library" �p)
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "libbulletml - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /W3 /GR /GX /O2 /I "src/" /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD BASE RSC /l 0x411 /d "NDEBUG"
# ADD RSC /l 0x411 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "libbulletml - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /W3 /Gm /GR /GX /ZI /Od /I "src/" /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD BASE RSC /l 0x411 /d "_DEBUG"
# ADD RSC /l 0x411 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "libbulletml - Win32 Release"
# Name "libbulletml - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Group "libBulletML src"

# PROP Default_Filter ""
# Begin Source File

SOURCE=".\src\bulletmlparser-tinyxml.cpp"
# End Source File
# Begin Source File

SOURCE=".\src\bulletmlparser-xerces.cpp"
# End Source File
# Begin Source File

SOURCE=".\src\bulletmlparser-ygg.cpp"
# End Source File
# Begin Source File

SOURCE=.\src\bulletmlparser.cpp
# End Source File
# Begin Source File

SOURCE=.\src\bulletmlrunner.cpp
# End Source File
# Begin Source File

SOURCE=.\src\bulletmlrunnerimpl.cpp
# End Source File
# Begin Source File

SOURCE=.\src\bulletmltree.cpp
# End Source File
# Begin Source File

SOURCE=.\src\calc.cpp
# End Source File
# Begin Source File

SOURCE=".\src\formula-variables.cpp"
# End Source File
# End Group
# Begin Group "TinyXML src"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\tinyxml\tinyxml.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tinyxml\tinyxmlerror.cpp
# End Source File
# Begin Source File

SOURCE=.\src\tinyxml\tinyxmlparser.cpp
# End Source File
# End Group
# Begin Group "ygg src"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\ygg\ygg.cpp
# End Source File
# End Group
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Group "libBulletML header"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\auto_ptr_fix.h
# End Source File
# Begin Source File

SOURCE=.\src\bulletmlcommon.h
# End Source File
# Begin Source File

SOURCE=.\src\bulletmlerror.h
# End Source File
# Begin Source File

SOURCE=".\src\bulletmlparser-tinyxml.h"
# End Source File
# Begin Source File

SOURCE=".\src\bulletmlparser-xerces.h"
# End Source File
# Begin Source File

SOURCE=".\src\bulletmlparser-ygg.h"
# End Source File
# Begin Source File

SOURCE=.\src\bulletmlparser.h
# End Source File
# Begin Source File

SOURCE=.\src\bulletmlrunner.h
# End Source File
# Begin Source File

SOURCE=.\src\bulletmlrunnerimpl.h
# End Source File
# Begin Source File

SOURCE=.\src\bulletmltree.h
# End Source File
# Begin Source File

SOURCE=.\src\calc.h
# End Source File
# Begin Source File

SOURCE=".\src\formula-variables.h"
# End Source File
# Begin Source File

SOURCE=.\src\formula.h
# End Source File
# Begin Source File

SOURCE=.\src\tree.h
# End Source File
# End Group
# Begin Group "TinyXML header"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\tinyxml\tinyxml.h
# End Source File
# End Group
# Begin Group "ygg header"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\src\ygg\ygg.h
# End Source File
# End Group
# End Group
# End Target
# End Project
