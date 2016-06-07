################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Tree/ProtoBuf.cc \
../Tree/ProtoBufTest.cc \
../Tree/Tree.cc \
../Tree/TreeTest.cc 

OBJS += \
./Tree/ProtoBuf.o \
./Tree/ProtoBufTest.o \
./Tree/Tree.o \
./Tree/TreeTest.o 

CC_DEPS += \
./Tree/ProtoBuf.d \
./Tree/ProtoBufTest.d \
./Tree/Tree.d \
./Tree/TreeTest.d 


# Each subdirectory must supply rules for building sources it contributes
Tree/%.o: ../Tree/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


