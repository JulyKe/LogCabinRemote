################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../build/Event/File.o \
../build/Event/FileTest.o \
../build/Event/Loop.o \
../build/Event/LoopTest.o \
../build/Event/Signal.o \
../build/Event/SignalTest.o \
../build/Event/Timer.o \
../build/Event/TimerTest.o 

CC_SRCS += \
../build/Event/File.cc \
../build/Event/FileTest.cc \
../build/Event/Loop.cc \
../build/Event/LoopTest.cc \
../build/Event/Signal.cc \
../build/Event/SignalTest.cc \
../build/Event/Timer.cc \
../build/Event/TimerTest.cc 

OBJS += \
./build/Event/File.o \
./build/Event/FileTest.o \
./build/Event/Loop.o \
./build/Event/LoopTest.o \
./build/Event/Signal.o \
./build/Event/SignalTest.o \
./build/Event/Timer.o \
./build/Event/TimerTest.o 

CC_DEPS += \
./build/Event/File.d \
./build/Event/FileTest.d \
./build/Event/Loop.d \
./build/Event/LoopTest.d \
./build/Event/Signal.d \
./build/Event/SignalTest.d \
./build/Event/Timer.d \
./build/Event/TimerTest.d 


# Each subdirectory must supply rules for building sources it contributes
build/Event/%.o: ../build/Event/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


