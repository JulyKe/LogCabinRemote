################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../build/Client/Backoff.o \
../build/Client/BackoffTest.o \
../build/Client/Client.o \
../build/Client/ClientImpl.o \
../build/Client/ClientImplTest.o \
../build/Client/ClientInterceptor.o \
../build/Client/ClientTest.o \
../build/Client/LeaderRPC.o \
../build/Client/LeaderRPCMock.o \
../build/Client/LeaderRPCTest.o \
../build/Client/MockClientImpl.o \
../build/Client/MockClientImplTest.o \
../build/Client/ServerControl.o \
../build/Client/SessionManager.o \
../build/Client/SessionManagerTest.o \
../build/Client/Util.o \
../build/Client/UtilTest.o 

CC_SRCS += \
../build/Client/Backoff.cc \
../build/Client/BackoffTest.cc \
../build/Client/Client.cc \
../build/Client/ClientImpl.cc \
../build/Client/ClientImplTest.cc \
../build/Client/ClientInterceptor.cc \
../build/Client/ClientTest.cc \
../build/Client/LeaderRPC.cc \
../build/Client/LeaderRPCMock.cc \
../build/Client/LeaderRPCTest.cc \
../build/Client/MockClientImpl.cc \
../build/Client/MockClientImplTest.cc \
../build/Client/ServerControl.cc \
../build/Client/SessionManager.cc \
../build/Client/SessionManagerTest.cc \
../build/Client/Util.cc \
../build/Client/UtilTest.cc 

OBJS += \
./build/Client/Backoff.o \
./build/Client/BackoffTest.o \
./build/Client/Client.o \
./build/Client/ClientImpl.o \
./build/Client/ClientImplTest.o \
./build/Client/ClientInterceptor.o \
./build/Client/ClientTest.o \
./build/Client/LeaderRPC.o \
./build/Client/LeaderRPCMock.o \
./build/Client/LeaderRPCTest.o \
./build/Client/MockClientImpl.o \
./build/Client/MockClientImplTest.o \
./build/Client/ServerControl.o \
./build/Client/SessionManager.o \
./build/Client/SessionManagerTest.o \
./build/Client/Util.o \
./build/Client/UtilTest.o 

CC_DEPS += \
./build/Client/Backoff.d \
./build/Client/BackoffTest.d \
./build/Client/Client.d \
./build/Client/ClientImpl.d \
./build/Client/ClientImplTest.d \
./build/Client/ClientInterceptor.d \
./build/Client/ClientTest.d \
./build/Client/LeaderRPC.d \
./build/Client/LeaderRPCMock.d \
./build/Client/LeaderRPCTest.d \
./build/Client/MockClientImpl.d \
./build/Client/MockClientImplTest.d \
./build/Client/ServerControl.d \
./build/Client/SessionManager.d \
./build/Client/SessionManagerTest.d \
./build/Client/Util.d \
./build/Client/UtilTest.d 


# Each subdirectory must supply rules for building sources it contributes
build/Client/%.o: ../build/Client/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


