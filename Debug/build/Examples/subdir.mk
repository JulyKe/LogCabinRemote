################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../build/Examples/Benchmark.o \
../build/Examples/FailoverTest.o \
../build/Examples/HelloWorld.o \
../build/Examples/Reconfigure.o \
../build/Examples/ReconfigureTest.o \
../build/Examples/SmokeTest.o \
../build/Examples/TreeOps.o 

CC_SRCS += \
../build/Examples/Benchmark.cc \
../build/Examples/FailoverTest.cc \
../build/Examples/HelloWorld.cc \
../build/Examples/Reconfigure.cc \
../build/Examples/ReconfigureTest.cc \
../build/Examples/SmokeTest.cc \
../build/Examples/TreeOps.cc 

OBJS += \
./build/Examples/Benchmark.o \
./build/Examples/FailoverTest.o \
./build/Examples/HelloWorld.o \
./build/Examples/Reconfigure.o \
./build/Examples/ReconfigureTest.o \
./build/Examples/SmokeTest.o \
./build/Examples/TreeOps.o 

CC_DEPS += \
./build/Examples/Benchmark.d \
./build/Examples/FailoverTest.d \
./build/Examples/HelloWorld.d \
./build/Examples/Reconfigure.d \
./build/Examples/ReconfigureTest.d \
./build/Examples/SmokeTest.d \
./build/Examples/TreeOps.d 


# Each subdirectory must supply rules for building sources it contributes
build/Examples/%.o: ../build/Examples/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


