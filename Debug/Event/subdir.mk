################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Event/File.cc \
../Event/FileTest.cc \
../Event/Loop.cc \
../Event/LoopTest.cc \
../Event/Signal.cc \
../Event/SignalTest.cc \
../Event/Timer.cc \
../Event/TimerTest.cc 

CC_DEPS += \
./Event/File.d \
./Event/FileTest.d \
./Event/Loop.d \
./Event/LoopTest.d \
./Event/Signal.d \
./Event/SignalTest.d \
./Event/Timer.d \
./Event/TimerTest.d 

OBJS += \
./Event/File.o \
./Event/FileTest.o \
./Event/Loop.o \
./Event/LoopTest.o \
./Event/Signal.o \
./Event/SignalTest.o \
./Event/Timer.o \
./Event/TimerTest.o 


# Each subdirectory must supply rules for building sources it contributes
Event/%.o: ../Event/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


