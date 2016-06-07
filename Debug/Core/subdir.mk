################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Core/Buffer.cc \
../Core/BufferTest.cc \
../Core/Checksum.cc \
../Core/ChecksumTest.cc \
../Core/CompatHashTest.cc \
../Core/ConditionVariable.cc \
../Core/ConditionVariableTest.cc \
../Core/Config.cc \
../Core/ConfigTest.cc \
../Core/Debug.cc \
../Core/DebugTest.cc \
../Core/ProtoBuf.cc \
../Core/ProtoBufTest.cc \
../Core/Random.cc \
../Core/RandomTest.cc \
../Core/RollingStat.cc \
../Core/RollingStatTest.cc \
../Core/STLUtilTest.cc \
../Core/StringUtil.cc \
../Core/StringUtilTest.cc \
../Core/ThreadId.cc \
../Core/ThreadIdTest.cc \
../Core/Time.cc \
../Core/TimeTest.cc \
../Core/Util.cc \
../Core/UtilTest.cc 

OBJS += \
./Core/Buffer.o \
./Core/BufferTest.o \
./Core/Checksum.o \
./Core/ChecksumTest.o \
./Core/CompatHashTest.o \
./Core/ConditionVariable.o \
./Core/ConditionVariableTest.o \
./Core/Config.o \
./Core/ConfigTest.o \
./Core/Debug.o \
./Core/DebugTest.o \
./Core/ProtoBuf.o \
./Core/ProtoBufTest.o \
./Core/Random.o \
./Core/RandomTest.o \
./Core/RollingStat.o \
./Core/RollingStatTest.o \
./Core/STLUtilTest.o \
./Core/StringUtil.o \
./Core/StringUtilTest.o \
./Core/ThreadId.o \
./Core/ThreadIdTest.o \
./Core/Time.o \
./Core/TimeTest.o \
./Core/Util.o \
./Core/UtilTest.o 

CC_DEPS += \
./Core/Buffer.d \
./Core/BufferTest.d \
./Core/Checksum.d \
./Core/ChecksumTest.d \
./Core/CompatHashTest.d \
./Core/ConditionVariable.d \
./Core/ConditionVariableTest.d \
./Core/Config.d \
./Core/ConfigTest.d \
./Core/Debug.d \
./Core/DebugTest.d \
./Core/ProtoBuf.d \
./Core/ProtoBufTest.d \
./Core/Random.d \
./Core/RandomTest.d \
./Core/RollingStat.d \
./Core/RollingStatTest.d \
./Core/STLUtilTest.d \
./Core/StringUtil.d \
./Core/StringUtilTest.d \
./Core/ThreadId.d \
./Core/ThreadIdTest.d \
./Core/Time.d \
./Core/TimeTest.d \
./Core/Util.d \
./Core/UtilTest.d 


# Each subdirectory must supply rules for building sources it contributes
Core/%.o: ../Core/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


