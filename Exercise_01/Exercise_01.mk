##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Exercise_01
ConfigurationName      :=Debug
WorkspaceConfiguration := $(ConfigurationName)
WorkspacePath          :=/home/carlos/Documents/Lab_Introduction_to_threads
ProjectPath            :=/home/carlos/Documents/Lab_Introduction_to_threads/Exercise_01
IntermediateDirectory  :=../build-$(ConfigurationName)/Exercise_01
OutDir                 :=../build-$(ConfigurationName)/Exercise_01
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Carlos Tessier
Date                   :=22/03/21
CodeLitePath           :=/home/carlos/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=../build-$(ConfigurationName)/bin/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :=$(IntermediateDirectory)/ObjectsList.txt
PCHCompileFlags        :=
LinkOptions            :=  -pthread
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=../build-$(ConfigurationName)/Exercise_01/main.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: MakeIntermediateDirs $(OutputFile)

$(OutputFile): ../build-$(ConfigurationName)/Exercise_01/.d $(Objects) 
	@mkdir -p "../build-$(ConfigurationName)/Exercise_01"
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@mkdir -p "../build-$(ConfigurationName)/Exercise_01"
	@mkdir -p ""../build-$(ConfigurationName)/bin""

../build-$(ConfigurationName)/Exercise_01/.d:
	@mkdir -p "../build-$(ConfigurationName)/Exercise_01"

PreBuild:


##
## Objects
##
../build-$(ConfigurationName)/Exercise_01/main.c$(ObjectSuffix): main.c ../build-$(ConfigurationName)/Exercise_01/main.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/carlos/Documents/Lab_Introduction_to_threads/Exercise_01/main.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/main.c$(ObjectSuffix) $(IncludePath)
../build-$(ConfigurationName)/Exercise_01/main.c$(DependSuffix): main.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT../build-$(ConfigurationName)/Exercise_01/main.c$(ObjectSuffix) -MF../build-$(ConfigurationName)/Exercise_01/main.c$(DependSuffix) -MM main.c

../build-$(ConfigurationName)/Exercise_01/main.c$(PreprocessSuffix): main.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) ../build-$(ConfigurationName)/Exercise_01/main.c$(PreprocessSuffix) main.c


-include ../build-$(ConfigurationName)/Exercise_01//*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r $(IntermediateDirectory)


