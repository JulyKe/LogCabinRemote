################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../gtest/codegear/gtest_all.cc \
../gtest/codegear/gtest_link.cc 

OBJS += \
./gtest/codegear/gtest_all.o \
./gtest/codegear/gtest_link.o 

CC_DEPS += \
./gtest/codegear/gtest_all.d \
./gtest/codegear/gtest_link.d 


# Each subdirectory must supply rules for building sources it contributes
gtest/codegear/%.o: ../gtest/codegear/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


