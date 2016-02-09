################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Examples/Benchmark.cc \
../Examples/FailoverTest.cc \
../Examples/HelloWorld.cc \
../Examples/Reconfigure.cc \
../Examples/ReconfigureTest.cc \
../Examples/SmokeTest.cc \
../Examples/TreeOps.cc 

CC_DEPS += \
./Examples/Benchmark.d \
./Examples/FailoverTest.d \
./Examples/HelloWorld.d \
./Examples/Reconfigure.d \
./Examples/ReconfigureTest.d \
./Examples/SmokeTest.d \
./Examples/TreeOps.d 

OBJS += \
./Examples/Benchmark.o \
./Examples/FailoverTest.o \
./Examples/HelloWorld.o \
./Examples/Reconfigure.o \
./Examples/ReconfigureTest.o \
./Examples/SmokeTest.o \
./Examples/TreeOps.o 


# Each subdirectory must supply rules for building sources it contributes
Examples/%.o: ../Examples/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


