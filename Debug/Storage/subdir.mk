################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Storage/FilesystemUtil.cc \
../Storage/FilesystemUtilTest.cc \
../Storage/Layout.cc \
../Storage/LayoutTest.cc \
../Storage/Log.cc \
../Storage/LogFactory.cc \
../Storage/LogFactoryTest.cc \
../Storage/MemoryLog.cc \
../Storage/MemoryLogTest.cc \
../Storage/SegmentedLog.cc \
../Storage/SegmentedLogTest.cc \
../Storage/SimpleFileLog.cc \
../Storage/SimpleFileLogTest.cc \
../Storage/SnapshotFile.cc \
../Storage/SnapshotFileTest.cc \
../Storage/Tool.cc 

OBJS += \
./Storage/FilesystemUtil.o \
./Storage/FilesystemUtilTest.o \
./Storage/Layout.o \
./Storage/LayoutTest.o \
./Storage/Log.o \
./Storage/LogFactory.o \
./Storage/LogFactoryTest.o \
./Storage/MemoryLog.o \
./Storage/MemoryLogTest.o \
./Storage/SegmentedLog.o \
./Storage/SegmentedLogTest.o \
./Storage/SimpleFileLog.o \
./Storage/SimpleFileLogTest.o \
./Storage/SnapshotFile.o \
./Storage/SnapshotFileTest.o \
./Storage/Tool.o 

CC_DEPS += \
./Storage/FilesystemUtil.d \
./Storage/FilesystemUtilTest.d \
./Storage/Layout.d \
./Storage/LayoutTest.d \
./Storage/Log.d \
./Storage/LogFactory.d \
./Storage/LogFactoryTest.d \
./Storage/MemoryLog.d \
./Storage/MemoryLogTest.d \
./Storage/SegmentedLog.d \
./Storage/SegmentedLogTest.d \
./Storage/SimpleFileLog.d \
./Storage/SimpleFileLogTest.d \
./Storage/SnapshotFile.d \
./Storage/SnapshotFileTest.d \
./Storage/Tool.d 


# Each subdirectory must supply rules for building sources it contributes
Storage/%.o: ../Storage/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


