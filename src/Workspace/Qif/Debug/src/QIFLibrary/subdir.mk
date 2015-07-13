################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
../src/QIFLibrary/Auxiliary.cxx \
../src/QIFLibrary/Characteristics.cxx \
../src/QIFLibrary/Expressions.cxx \
../src/QIFLibrary/Features.cxx \
../src/QIFLibrary/GenericExpressions.cxx \
../src/QIFLibrary/Geometry.cxx \
../src/QIFLibrary/IntermediatesPMI.cxx \
../src/QIFLibrary/Primitives.cxx \
../src/QIFLibrary/PrimitivesPD.cxx \
../src/QIFLibrary/PrimitivesPMI.cxx \
../src/QIFLibrary/Statistics.cxx \
../src/QIFLibrary/Topology.cxx \
../src/QIFLibrary/Traceability.cxx \
../src/QIFLibrary/Units.cxx \
../src/QIFLibrary/Visualization.cxx 

CXX_DEPS += \
./src/QIFLibrary/Auxiliary.d \
./src/QIFLibrary/Characteristics.d \
./src/QIFLibrary/Expressions.d \
./src/QIFLibrary/Features.d \
./src/QIFLibrary/GenericExpressions.d \
./src/QIFLibrary/Geometry.d \
./src/QIFLibrary/IntermediatesPMI.d \
./src/QIFLibrary/Primitives.d \
./src/QIFLibrary/PrimitivesPD.d \
./src/QIFLibrary/PrimitivesPMI.d \
./src/QIFLibrary/Statistics.d \
./src/QIFLibrary/Topology.d \
./src/QIFLibrary/Traceability.d \
./src/QIFLibrary/Units.d \
./src/QIFLibrary/Visualization.d 

OBJS += \
./src/QIFLibrary/Auxiliary.o \
./src/QIFLibrary/Characteristics.o \
./src/QIFLibrary/Expressions.o \
./src/QIFLibrary/Features.o \
./src/QIFLibrary/GenericExpressions.o \
./src/QIFLibrary/Geometry.o \
./src/QIFLibrary/IntermediatesPMI.o \
./src/QIFLibrary/Primitives.o \
./src/QIFLibrary/PrimitivesPD.o \
./src/QIFLibrary/PrimitivesPMI.o \
./src/QIFLibrary/Statistics.o \
./src/QIFLibrary/Topology.o \
./src/QIFLibrary/Traceability.o \
./src/QIFLibrary/Units.o \
./src/QIFLibrary/Visualization.o 


# Each subdirectory must supply rules for building sources it contributes
src/QIFLibrary/%.o: ../src/QIFLibrary/%.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -I/home/michalos/workspace/Qif/NIST -I/usr/include -O0 -g3 -w -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


