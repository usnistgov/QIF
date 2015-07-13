################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
../src/QIFApplications/QIFDocument.cxx \
../src/QIFApplications/QIFMeasurementResources.cxx \
../src/QIFApplications/QIFPlan.cxx \
../src/QIFApplications/QIFProduct.cxx \
../src/QIFApplications/QIFResults.cxx \
../src/QIFApplications/QIFRules.cxx \
../src/QIFApplications/QIFStatistics.cxx 

CXX_DEPS += \
./src/QIFApplications/QIFDocument.d \
./src/QIFApplications/QIFMeasurementResources.d \
./src/QIFApplications/QIFPlan.d \
./src/QIFApplications/QIFProduct.d \
./src/QIFApplications/QIFResults.d \
./src/QIFApplications/QIFRules.d \
./src/QIFApplications/QIFStatistics.d 

OBJS += \
./src/QIFApplications/QIFDocument.o \
./src/QIFApplications/QIFMeasurementResources.o \
./src/QIFApplications/QIFPlan.o \
./src/QIFApplications/QIFProduct.o \
./src/QIFApplications/QIFResults.o \
./src/QIFApplications/QIFRules.o \
./src/QIFApplications/QIFStatistics.o 


# Each subdirectory must supply rules for building sources it contributes
src/QIFApplications/%.o: ../src/QIFApplications/%.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -I/home/michalos/workspace/Qif/NIST -I/usr/include -O0 -g3 -w -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


