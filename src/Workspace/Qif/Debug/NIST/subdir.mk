################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../NIST/Timestamp.cpp 

OBJS += \
./NIST/Timestamp.o 

CPP_DEPS += \
./NIST/Timestamp.d 


# Each subdirectory must supply rules for building sources it contributes
NIST/%.o: ../NIST/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -I/home/michalos/workspace/Qif/NIST -I/usr/include -O0 -g3 -w -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


