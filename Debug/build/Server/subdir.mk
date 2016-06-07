################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../build/Server/ClientService.o \
../build/Server/ClientServiceTest.o \
../build/Server/ControlService.o \
../build/Server/EventInterceptor.o \
../build/Server/Globals.o \
../build/Server/GlobalsTest.o \
../build/Server/JNICaller.o \
../build/Server/Main.o \
../build/Server/MessageInterceptor.o \
../build/Server/RPCClient.o \
../build/Server/RaftConsensus.o \
../build/Server/RaftConsensusInvariants.o \
../build/Server/RaftConsensusTest.o \
../build/Server/RaftService.o \
../build/Server/SAMCServer.o \
../build/Server/ServerStats.o \
../build/Server/ServerStatsTest.o \
../build/Server/SnapshotMetadata.pb.o \
../build/Server/SnapshotStateMachine.pb.o \
../build/Server/SnapshotStats.pb.o \
../build/Server/StateMachine.o \
../build/Server/StateMachineTest.o 

CC_SRCS += \
../build/Server/ClientService.cc \
../build/Server/ClientServiceTest.cc \
../build/Server/ControlService.cc \
../build/Server/EventInterceptor.cc \
../build/Server/Globals.cc \
../build/Server/GlobalsTest.cc \
../build/Server/Main.cc \
../build/Server/RPCClient.cc \
../build/Server/RaftConsensus.cc \
../build/Server/RaftConsensusInvariants.cc \
../build/Server/RaftConsensusTest.cc \
../build/Server/RaftService.cc \
../build/Server/ServerStats.cc \
../build/Server/ServerStatsTest.cc \
../build/Server/SnapshotMetadata.pb.cc \
../build/Server/SnapshotStateMachine.pb.cc \
../build/Server/SnapshotStats.pb.cc \
../build/Server/StateMachine.cc \
../build/Server/StateMachineTest.cc 

OBJS += \
./build/Server/ClientService.o \
./build/Server/ClientServiceTest.o \
./build/Server/ControlService.o \
./build/Server/EventInterceptor.o \
./build/Server/Globals.o \
./build/Server/GlobalsTest.o \
./build/Server/Main.o \
./build/Server/RPCClient.o \
./build/Server/RaftConsensus.o \
./build/Server/RaftConsensusInvariants.o \
./build/Server/RaftConsensusTest.o \
./build/Server/RaftService.o \
./build/Server/ServerStats.o \
./build/Server/ServerStatsTest.o \
./build/Server/SnapshotMetadata.pb.o \
./build/Server/SnapshotStateMachine.pb.o \
./build/Server/SnapshotStats.pb.o \
./build/Server/StateMachine.o \
./build/Server/StateMachineTest.o 

CC_DEPS += \
./build/Server/ClientService.d \
./build/Server/ClientServiceTest.d \
./build/Server/ControlService.d \
./build/Server/EventInterceptor.d \
./build/Server/Globals.d \
./build/Server/GlobalsTest.d \
./build/Server/Main.d \
./build/Server/RPCClient.d \
./build/Server/RaftConsensus.d \
./build/Server/RaftConsensusInvariants.d \
./build/Server/RaftConsensusTest.d \
./build/Server/RaftService.d \
./build/Server/ServerStats.d \
./build/Server/ServerStatsTest.d \
./build/Server/SnapshotMetadata.pb.d \
./build/Server/SnapshotStateMachine.pb.d \
./build/Server/SnapshotStats.pb.d \
./build/Server/StateMachine.d \
./build/Server/StateMachineTest.d 


# Each subdirectory must supply rules for building sources it contributes
build/Server/%.o: ../build/Server/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


