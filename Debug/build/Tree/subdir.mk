################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../build/Tree/ProtoBuf.cc \
../build/Tree/ProtoBufTest.cc \
../build/Tree/Snapshot.pb.cc \
../build/Tree/Tree.cc \
../build/Tree/TreeTest.cc 

O_SRCS += \
../build/Tree/ProtoBuf.o \
../build/Tree/ProtoBufTest.o \
../build/Tree/Snapshot.pb.o \
../build/Tree/Tree.o \
../build/Tree/TreeTest.o 

CC_DEPS += \
./build/Tree/ProtoBuf.d \
./build/Tree/ProtoBufTest.d \
./build/Tree/Snapshot.pb.d \
./build/Tree/Tree.d \
./build/Tree/TreeTest.d 

OBJS += \
./build/Tree/ProtoBuf.o \
./build/Tree/ProtoBufTest.o \
./build/Tree/Snapshot.pb.o \
./build/Tree/Tree.o \
./build/Tree/TreeTest.o 


# Each subdirectory must supply rules for building sources it contributes
build/Tree/%.o: ../build/Tree/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


