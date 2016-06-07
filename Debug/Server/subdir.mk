################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../Server/ClientService.cc \
../Server/ClientServiceTest.cc \
../Server/ControlService.cc \
../Server/EventInterceptor.cc \
../Server/Globals.cc \
../Server/GlobalsTest.cc \
../Server/Main.cc \
../Server/RaftConsensus.cc \
../Server/RaftConsensusInvariants.cc \
../Server/RaftConsensusTest.cc \
../Server/RaftService.cc \
../Server/ServerStats.cc \
../Server/ServerStatsTest.cc \
../Server/StateMachine.cc \
../Server/StateMachineTest.cc 

OBJS += \
./Server/ClientService.o \
./Server/ClientServiceTest.o \
./Server/ControlService.o \
./Server/EventInterceptor.o \
./Server/Globals.o \
./Server/GlobalsTest.o \
./Server/Main.o \
./Server/RaftConsensus.o \
./Server/RaftConsensusInvariants.o \
./Server/RaftConsensusTest.o \
./Server/RaftService.o \
./Server/ServerStats.o \
./Server/ServerStatsTest.o \
./Server/StateMachine.o \
./Server/StateMachineTest.o 

CC_DEPS += \
./Server/ClientService.d \
./Server/ClientServiceTest.d \
./Server/ControlService.d \
./Server/EventInterceptor.d \
./Server/Globals.d \
./Server/GlobalsTest.d \
./Server/Main.d \
./Server/RaftConsensus.d \
./Server/RaftConsensusInvariants.d \
./Server/RaftConsensusTest.d \
./Server/RaftService.d \
./Server/ServerStats.d \
./Server/ServerStatsTest.d \
./Server/StateMachine.d \
./Server/StateMachineTest.d 


# Each subdirectory must supply rules for building sources it contributes
Server/%.o: ../Server/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


