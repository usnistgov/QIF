################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/FairReports.cpp \
../src/OdbcArchiver.cpp \
../src/Qif.cpp \
../src/Symbol.cpp \
../src/SymbolTable.cpp \
../src/XercesUtils.cpp \
../src/XmlAndSql.cpp \
../src/XsdParser.cpp 

OBJS += \
./src/FairReports.o \
./src/OdbcArchiver.o \
./src/Qif.o \
./src/Symbol.o \
./src/SymbolTable.o \
./src/XercesUtils.o \
./src/XmlAndSql.o \
./src/XsdParser.o 

CPP_DEPS += \
./src/FairReports.d \
./src/OdbcArchiver.d \
./src/Qif.d \
./src/Symbol.d \
./src/SymbolTable.d \
./src/XercesUtils.d \
./src/XmlAndSql.d \
./src/XsdParser.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -I/home/michalos/workspace/Qif/NIST -I/usr/include -O0 -g3 -w -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


