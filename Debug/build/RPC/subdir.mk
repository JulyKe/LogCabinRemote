################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../build/RPC/Address.o \
../build/RPC/AddressTest.o \
../build/RPC/ClientRPC.o \
../build/RPC/ClientRPCTest.o \
../build/RPC/ClientServerTest.o \
../build/RPC/ClientSession.o \
../build/RPC/ClientSessionTest.o \
../build/RPC/MessageSocket.o \
../build/RPC/MessageSocketTest.o \
../build/RPC/OpaqueClientRPC.o \
../build/RPC/OpaqueClientRPCTest.o \
../build/RPC/OpaqueServer.o \
../build/RPC/OpaqueServerRPC.o \
../build/RPC/OpaqueServerRPCTest.o \
../build/RPC/OpaqueServerTest.o \
../build/RPC/Protocol.o \
../build/RPC/Server.o \
../build/RPC/ServerRPC.o \
../build/RPC/ServerRPCTest.o \
../build/RPC/ServerTest.o \
../build/RPC/ServiceMock.o \
../build/RPC/ThreadDispatchService.o \
../build/RPC/ThreadDispatchServiceTest.o 

CC_SRCS += \
../build/RPC/Address.cc \
../build/RPC/AddressTest.cc \
../build/RPC/ClientRPC.cc \
../build/RPC/ClientRPCTest.cc \
../build/RPC/ClientServerTest.cc \
../build/RPC/ClientSession.cc \
../build/RPC/ClientSessionTest.cc \
../build/RPC/MessageSocket.cc \
../build/RPC/MessageSocketTest.cc \
../build/RPC/OpaqueClientRPC.cc \
../build/RPC/OpaqueClientRPCTest.cc \
../build/RPC/OpaqueServer.cc \
../build/RPC/OpaqueServerRPC.cc \
../build/RPC/OpaqueServerRPCTest.cc \
../build/RPC/OpaqueServerTest.cc \
../build/RPC/Protocol.cc \
../build/RPC/Server.cc \
../build/RPC/ServerRPC.cc \
../build/RPC/ServerRPCTest.cc \
../build/RPC/ServerTest.cc \
../build/RPC/ServiceMock.cc \
../build/RPC/ThreadDispatchService.cc \
../build/RPC/ThreadDispatchServiceTest.cc 

OBJS += \
./build/RPC/Address.o \
./build/RPC/AddressTest.o \
./build/RPC/ClientRPC.o \
./build/RPC/ClientRPCTest.o \
./build/RPC/ClientServerTest.o \
./build/RPC/ClientSession.o \
./build/RPC/ClientSessionTest.o \
./build/RPC/MessageSocket.o \
./build/RPC/MessageSocketTest.o \
./build/RPC/OpaqueClientRPC.o \
./build/RPC/OpaqueClientRPCTest.o \
./build/RPC/OpaqueServer.o \
./build/RPC/OpaqueServerRPC.o \
./build/RPC/OpaqueServerRPCTest.o \
./build/RPC/OpaqueServerTest.o \
./build/RPC/Protocol.o \
./build/RPC/Server.o \
./build/RPC/ServerRPC.o \
./build/RPC/ServerRPCTest.o \
./build/RPC/ServerTest.o \
./build/RPC/ServiceMock.o \
./build/RPC/ThreadDispatchService.o \
./build/RPC/ThreadDispatchServiceTest.o 

CC_DEPS += \
./build/RPC/Address.d \
./build/RPC/AddressTest.d \
./build/RPC/ClientRPC.d \
./build/RPC/ClientRPCTest.d \
./build/RPC/ClientServerTest.d \
./build/RPC/ClientSession.d \
./build/RPC/ClientSessionTest.d \
./build/RPC/MessageSocket.d \
./build/RPC/MessageSocketTest.d \
./build/RPC/OpaqueClientRPC.d \
./build/RPC/OpaqueClientRPCTest.d \
./build/RPC/OpaqueServer.d \
./build/RPC/OpaqueServerRPC.d \
./build/RPC/OpaqueServerRPCTest.d \
./build/RPC/OpaqueServerTest.d \
./build/RPC/Protocol.d \
./build/RPC/Server.d \
./build/RPC/ServerRPC.d \
./build/RPC/ServerRPCTest.d \
./build/RPC/ServerTest.d \
./build/RPC/ServiceMock.d \
./build/RPC/ThreadDispatchService.d \
./build/RPC/ThreadDispatchServiceTest.d 


# Each subdirectory must supply rules for building sources it contributes
build/RPC/%.o: ../build/RPC/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


