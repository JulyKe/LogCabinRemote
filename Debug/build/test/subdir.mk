################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../build/test/TestRunner.cc 

O_SRCS += \
../build/test/TestRunner.o \
../build/test/gtest-all.o 

CC_DEPS += \
./build/test/TestRunner.d 

OBJS += \
./build/test/TestRunner.o 


# Each subdirectory must supply rules for building sources it contributes
build/test/%.o: ../build/test/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


