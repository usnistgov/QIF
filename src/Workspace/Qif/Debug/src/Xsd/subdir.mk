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
../src/QIFApplications/QIFDocument.cxx \
../src/QIFApplications/QIFMeasurementResources.cxx \
../src/QIFApplications/QIFPlan.cxx \
../src/QIFApplications/QIFProduct.cxx \
../src/QIFApplications/QIFResults.cxx \
../src/QIFApplications/QIFRules.cxx \
../src/QIFApplications/QIFStatistics.cxx \
../src/QIFLibrary/Statistics.cxx \
../src/QIFLibrary/Topology.cxx \
../src/QIFLibrary/Traceability.cxx \
../src/QIFLibrary/Units.cxx \
../src/QIFLibrary/Visualization.cxx 

CXX_DEPS += \
./src/Xsd/Auxiliary.d \
./src/Xsd/Characteristics.d \
./src/Xsd/Expressions.d \
./src/Xsd/Features.d \
./src/Xsd/GenericExpressions.d \
./src/Xsd/Geometry.d \
./src/Xsd/IntermediatesPMI.d \
./src/Xsd/Primitives.d \
./src/Xsd/PrimitivesPD.d \
./src/Xsd/PrimitivesPMI.d \
./src/Xsd/QIFDocument.d \
./src/Xsd/QIFMeasurementResources.d \
./src/Xsd/QIFPlan.d \
./src/Xsd/QIFProduct.d \
./src/Xsd/QIFResults.d \
./src/Xsd/QIFRules.d \
./src/Xsd/QIFStatistics.d \
./src/Xsd/Statistics.d \
./src/Xsd/Topology.d \
./src/Xsd/Traceability.d \
./src/Xsd/Units.d \
./src/Xsd/Visualization.d 

OBJS += \
./src/Xsd/Auxiliary.o \
./src/Xsd/Characteristics.o \
./src/Xsd/Expressions.o \
./src/Xsd/Features.o \
./src/Xsd/GenericExpressions.o \
./src/Xsd/Geometry.o \
./src/Xsd/IntermediatesPMI.o \
./src/Xsd/Primitives.o \
./src/Xsd/PrimitivesPD.o \
./src/Xsd/PrimitivesPMI.o \
./src/Xsd/QIFDocument.o \
./src/Xsd/QIFMeasurementResources.o \
./src/Xsd/QIFPlan.o \
./src/Xsd/QIFProduct.o \
./src/Xsd/QIFResults.o \
./src/Xsd/QIFRules.o \
./src/Xsd/QIFStatistics.o \
./src/Xsd/Statistics.o \
./src/Xsd/Topology.o \
./src/Xsd/Traceability.o \
./src/Xsd/Units.o \
./src/Xsd/Visualization.o 


# Each subdirectory must supply rules for building sources it contributes
src/Xsd/Auxiliary.o: /home/michalos/workspace/Qif/src/QIFLibrary/Auxiliary.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/Characteristics.o: /home/michalos/workspace/Qif/src/QIFLibrary/Characteristics.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/Expressions.o: /home/michalos/workspace/Qif/src/QIFLibrary/Expressions.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/Features.o: /home/michalos/workspace/Qif/src/QIFLibrary/Features.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/GenericExpressions.o: /home/michalos/workspace/Qif/src/QIFLibrary/GenericExpressions.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/Geometry.o: /home/michalos/workspace/Qif/src/QIFLibrary/Geometry.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/IntermediatesPMI.o: /home/michalos/workspace/Qif/src/QIFLibrary/IntermediatesPMI.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/Primitives.o: /home/michalos/workspace/Qif/src/QIFLibrary/Primitives.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/PrimitivesPD.o: /home/michalos/workspace/Qif/src/QIFLibrary/PrimitivesPD.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/PrimitivesPMI.o: /home/michalos/workspace/Qif/src/QIFLibrary/PrimitivesPMI.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/QIFDocument.o: /home/michalos/workspace/Qif/src/QIFApplications/QIFDocument.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/QIFMeasurementResources.o: /home/michalos/workspace/Qif/src/QIFApplications/QIFMeasurementResources.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/QIFPlan.o: /home/michalos/workspace/Qif/src/QIFApplications/QIFPlan.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/QIFProduct.o: /home/michalos/workspace/Qif/src/QIFApplications/QIFProduct.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/QIFResults.o: /home/michalos/workspace/Qif/src/QIFApplications/QIFResults.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/QIFRules.o: /home/michalos/workspace/Qif/src/QIFApplications/QIFRules.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/QIFStatistics.o: /home/michalos/workspace/Qif/src/QIFApplications/QIFStatistics.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/Statistics.o: /home/michalos/workspace/Qif/src/QIFLibrary/Statistics.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/Topology.o: /home/michalos/workspace/Qif/src/QIFLibrary/Topology.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/Traceability.o: /home/michalos/workspace/Qif/src/QIFLibrary/Traceability.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/Units.o: /home/michalos/workspace/Qif/src/QIFLibrary/Units.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

src/Xsd/Visualization.o: /home/michalos/workspace/Qif/src/QIFLibrary/Visualization.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


