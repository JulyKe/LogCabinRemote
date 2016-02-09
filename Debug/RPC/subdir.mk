################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../RPC/Address.cc \
../RPC/AddressTest.cc \
../RPC/ClientRPC.cc \
../RPC/ClientRPCTest.cc \
../RPC/ClientServerTest.cc \
../RPC/ClientSession.cc \
../RPC/ClientSessionTest.cc \
../RPC/MessageSocket.cc \
../RPC/MessageSocketTest.cc \
../RPC/OpaqueClientRPC.cc \
../RPC/OpaqueClientRPCTest.cc \
../RPC/OpaqueServer.cc \
../RPC/OpaqueServerRPC.cc \
../RPC/OpaqueServerRPCTest.cc \
../RPC/OpaqueServerTest.cc \
../RPC/Protocol.cc \
../RPC/Server.cc \
../RPC/ServerRPC.cc \
../RPC/ServerRPCTest.cc \
../RPC/ServerTest.cc \
../RPC/ServiceMock.cc \
../RPC/ThreadDispatchService.cc \
../RPC/ThreadDispatchServiceTest.cc 

CC_DEPS += \
./RPC/Address.d \
./RPC/AddressTest.d \
./RPC/ClientRPC.d \
./RPC/ClientRPCTest.d \
./RPC/ClientServerTest.d \
./RPC/ClientSession.d \
./RPC/ClientSessionTest.d \
./RPC/MessageSocket.d \
./RPC/MessageSocketTest.d \
./RPC/OpaqueClientRPC.d \
./RPC/OpaqueClientRPCTest.d \
./RPC/OpaqueServer.d \
./RPC/OpaqueServerRPC.d \
./RPC/OpaqueServerRPCTest.d \
./RPC/OpaqueServerTest.d \
./RPC/Protocol.d \
./RPC/Server.d \
./RPC/ServerRPC.d \
./RPC/ServerRPCTest.d \
./RPC/ServerTest.d \
./RPC/ServiceMock.d \
./RPC/ThreadDispatchService.d \
./RPC/ThreadDispatchServiceTest.d 

OBJS += \
./RPC/Address.o \
./RPC/AddressTest.o \
./RPC/ClientRPC.o \
./RPC/ClientRPCTest.o \
./RPC/ClientServerTest.o \
./RPC/ClientSession.o \
./RPC/ClientSessionTest.o \
./RPC/MessageSocket.o \
./RPC/MessageSocketTest.o \
./RPC/OpaqueClientRPC.o \
./RPC/OpaqueClientRPCTest.o \
./RPC/OpaqueServer.o \
./RPC/OpaqueServerRPC.o \
./RPC/OpaqueServerRPCTest.o \
./RPC/OpaqueServerTest.o \
./RPC/Protocol.o \
./RPC/Server.o \
./RPC/ServerRPC.o \
./RPC/ServerRPCTest.o \
./RPC/ServerTest.o \
./RPC/ServiceMock.o \
./RPC/ThreadDispatchService.o \
./RPC/ThreadDispatchServiceTest.o 


# Each subdirectory must supply rules for building sources it contributes
RPC/%.o: ../RPC/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


