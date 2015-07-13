################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../NIST/Math/linalg3d.cpp 

OBJS += \
./NIST/Math/linalg3d.o 

CPP_DEPS += \
./NIST/Math/linalg3d.d 


# Each subdirectory must supply rules for building sources it contributes
NIST/Math/linalg3d.o: ../NIST/Math/linalg3d.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -std=c++0x -DXERCES_STATIC_LIBRARY -I/home/michalos/catkin_ws/devel/include -I/home/michalos/catkin_ws/install/include -I/opt/ros/indigo/include -I/home/michalos/xerces-c-3.1.2/src -I/home/michalos/xsd/libxsd/xsd/cxx -I/home/michalos/workspace/Qif/src/QIFApplications -I/home/michalos/workspace/Qif/src/QIFLibrary -I/home/michalos/xsd/libxsd -I/home/michalos/workspace/Qif/NIST -I/usr/include -O0 -g3 -w -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"NIST/Math/linalg3d.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


