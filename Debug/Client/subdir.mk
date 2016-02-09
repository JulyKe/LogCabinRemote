################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Client/Backoff.cc \
../Client/BackoffTest.cc \
../Client/Client.cc \
../Client/ClientImpl.cc \
../Client/ClientImplTest.cc \
../Client/ClientTest.cc \
../Client/LeaderRPC.cc \
../Client/LeaderRPCMock.cc \
../Client/LeaderRPCTest.cc \
../Client/MockClientImpl.cc \
../Client/MockClientImplTest.cc \
../Client/ServerControl.cc \
../Client/SessionManager.cc \
../Client/SessionManagerTest.cc \
../Client/Util.cc \
../Client/UtilTest.cc 

CC_DEPS += \
./Client/Backoff.d \
./Client/BackoffTest.d \
./Client/Client.d \
./Client/ClientImpl.d \
./Client/ClientImplTest.d \
./Client/ClientTest.d \
./Client/LeaderRPC.d \
./Client/LeaderRPCMock.d \
./Client/LeaderRPCTest.d \
./Client/MockClientImpl.d \
./Client/MockClientImplTest.d \
./Client/ServerControl.d \
./Client/SessionManager.d \
./Client/SessionManagerTest.d \
./Client/Util.d \
./Client/UtilTest.d 

OBJS += \
./Client/Backoff.o \
./Client/BackoffTest.o \
./Client/Client.o \
./Client/ClientImpl.o \
./Client/ClientImplTest.o \
./Client/ClientTest.o \
./Client/LeaderRPC.o \
./Client/LeaderRPCMock.o \
./Client/LeaderRPCTest.o \
./Client/MockClientImpl.o \
./Client/MockClientImplTest.o \
./Client/ServerControl.o \
./Client/SessionManager.o \
./Client/SessionManagerTest.o \
./Client/Util.o \
./Client/UtilTest.o 


# Each subdirectory must supply rules for building sources it contributes
Client/%.o: ../Client/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


