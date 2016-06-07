################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../build/Storage/FilesystemUtil.o \
../build/Storage/FilesystemUtilTest.o \
../build/Storage/Layout.o \
../build/Storage/LayoutTest.o \
../build/Storage/Log.o \
../build/Storage/LogFactory.o \
../build/Storage/LogFactoryTest.o \
../build/Storage/MemoryLog.o \
../build/Storage/MemoryLogTest.o \
../build/Storage/SegmentedLog.o \
../build/Storage/SegmentedLog.pb.o \
../build/Storage/SegmentedLogTest.o \
../build/Storage/SimpleFileLog.o \
../build/Storage/SimpleFileLog.pb.o \
../build/Storage/SimpleFileLogTest.o \
../build/Storage/SnapshotFile.o \
../build/Storage/SnapshotFileTest.o \
../build/Storage/Tool.o 

CC_SRCS += \
../build/Storage/FilesystemUtil.cc \
../build/Storage/FilesystemUtilTest.cc \
../build/Storage/Layout.cc \
../build/Storage/LayoutTest.cc \
../build/Storage/Log.cc \
../build/Storage/LogFactory.cc \
../build/Storage/LogFactoryTest.cc \
../build/Storage/MemoryLog.cc \
../build/Storage/MemoryLogTest.cc \
../build/Storage/SegmentedLog.cc \
../build/Storage/SegmentedLog.pb.cc \
../build/Storage/SegmentedLogTest.cc \
../build/Storage/SimpleFileLog.cc \
../build/Storage/SimpleFileLog.pb.cc \
../build/Storage/SimpleFileLogTest.cc \
../build/Storage/SnapshotFile.cc \
../build/Storage/SnapshotFileTest.cc \
../build/Storage/Tool.cc 

OBJS += \
./build/Storage/FilesystemUtil.o \
./build/Storage/FilesystemUtilTest.o \
./build/Storage/Layout.o \
./build/Storage/LayoutTest.o \
./build/Storage/Log.o \
./build/Storage/LogFactory.o \
./build/Storage/LogFactoryTest.o \
./build/Storage/MemoryLog.o \
./build/Storage/MemoryLogTest.o \
./build/Storage/SegmentedLog.o \
./build/Storage/SegmentedLog.pb.o \
./build/Storage/SegmentedLogTest.o \
./build/Storage/SimpleFileLog.o \
./build/Storage/SimpleFileLog.pb.o \
./build/Storage/SimpleFileLogTest.o \
./build/Storage/SnapshotFile.o \
./build/Storage/SnapshotFileTest.o \
./build/Storage/Tool.o 

CC_DEPS += \
./build/Storage/FilesystemUtil.d \
./build/Storage/FilesystemUtilTest.d \
./build/Storage/Layout.d \
./build/Storage/LayoutTest.d \
./build/Storage/Log.d \
./build/Storage/LogFactory.d \
./build/Storage/LogFactoryTest.d \
./build/Storage/MemoryLog.d \
./build/Storage/MemoryLogTest.d \
./build/Storage/SegmentedLog.d \
./build/Storage/SegmentedLog.pb.d \
./build/Storage/SegmentedLogTest.d \
./build/Storage/SimpleFileLog.d \
./build/Storage/SimpleFileLog.pb.d \
./build/Storage/SimpleFileLogTest.d \
./build/Storage/SnapshotFile.d \
./build/Storage/SnapshotFileTest.d \
./build/Storage/Tool.d 


# Each subdirectory must supply rules for building sources it contributes
build/Storage/%.o: ../build/Storage/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


