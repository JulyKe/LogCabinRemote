################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../build/Core/Buffer.cc \
../build/Core/BufferTest.cc \
../build/Core/Checksum.cc \
../build/Core/ChecksumTest.cc \
../build/Core/CompatHashTest.cc \
../build/Core/ConditionVariable.cc \
../build/Core/ConditionVariableTest.cc \
../build/Core/Config.cc \
../build/Core/ConfigTest.cc \
../build/Core/Debug.cc \
../build/Core/DebugTest.cc \
../build/Core/ProtoBuf.cc \
../build/Core/ProtoBufTest.cc \
../build/Core/ProtoBufTest.pb.cc \
../build/Core/Random.cc \
../build/Core/RandomTest.cc \
../build/Core/RollingStat.cc \
../build/Core/RollingStatTest.cc \
../build/Core/STLUtilTest.cc \
../build/Core/StringUtil.cc \
../build/Core/StringUtilTest.cc \
../build/Core/ThreadId.cc \
../build/Core/ThreadIdTest.cc \
../build/Core/Time.cc \
../build/Core/TimeTest.cc \
../build/Core/Util.cc \
../build/Core/UtilTest.cc 

O_SRCS += \
../build/Core/Buffer.o \
../build/Core/BufferTest.o \
../build/Core/Checksum.o \
../build/Core/ChecksumTest.o \
../build/Core/CompatHashTest.o \
../build/Core/ConditionVariable.o \
../build/Core/ConditionVariableTest.o \
../build/Core/Config.o \
../build/Core/ConfigTest.o \
../build/Core/Debug.o \
../build/Core/DebugTest.o \
../build/Core/ProtoBuf.o \
../build/Core/ProtoBufTest.o \
../build/Core/ProtoBufTest.pb.o \
../build/Core/Random.o \
../build/Core/RandomTest.o \
../build/Core/RollingStat.o \
../build/Core/RollingStatTest.o \
../build/Core/STLUtilTest.o \
../build/Core/StringUtil.o \
../build/Core/StringUtilTest.o \
../build/Core/ThreadId.o \
../build/Core/ThreadIdTest.o \
../build/Core/Time.o \
../build/Core/TimeTest.o \
../build/Core/Util.o \
../build/Core/UtilTest.o 

CC_DEPS += \
./build/Core/Buffer.d \
./build/Core/BufferTest.d \
./build/Core/Checksum.d \
./build/Core/ChecksumTest.d \
./build/Core/CompatHashTest.d \
./build/Core/ConditionVariable.d \
./build/Core/ConditionVariableTest.d \
./build/Core/Config.d \
./build/Core/ConfigTest.d \
./build/Core/Debug.d \
./build/Core/DebugTest.d \
./build/Core/ProtoBuf.d \
./build/Core/ProtoBufTest.d \
./build/Core/ProtoBufTest.pb.d \
./build/Core/Random.d \
./build/Core/RandomTest.d \
./build/Core/RollingStat.d \
./build/Core/RollingStatTest.d \
./build/Core/STLUtilTest.d \
./build/Core/StringUtil.d \
./build/Core/StringUtilTest.d \
./build/Core/ThreadId.d \
./build/Core/ThreadIdTest.d \
./build/Core/Time.d \
./build/Core/TimeTest.d \
./build/Core/Util.d \
./build/Core/UtilTest.d 

OBJS += \
./build/Core/Buffer.o \
./build/Core/BufferTest.o \
./build/Core/Checksum.o \
./build/Core/ChecksumTest.o \
./build/Core/CompatHashTest.o \
./build/Core/ConditionVariable.o \
./build/Core/ConditionVariableTest.o \
./build/Core/Config.o \
./build/Core/ConfigTest.o \
./build/Core/Debug.o \
./build/Core/DebugTest.o \
./build/Core/ProtoBuf.o \
./build/Core/ProtoBufTest.o \
./build/Core/ProtoBufTest.pb.o \
./build/Core/Random.o \
./build/Core/RandomTest.o \
./build/Core/RollingStat.o \
./build/Core/RollingStatTest.o \
./build/Core/STLUtilTest.o \
./build/Core/StringUtil.o \
./build/Core/StringUtilTest.o \
./build/Core/ThreadId.o \
./build/Core/ThreadIdTest.o \
./build/Core/Time.o \
./build/Core/TimeTest.o \
./build/Core/Util.o \
./build/Core/UtilTest.o 


# Each subdirectory must supply rules for building sources it contributes
build/Core/%.o: ../build/Core/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


