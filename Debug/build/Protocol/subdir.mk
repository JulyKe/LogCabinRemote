################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../build/Protocol/Client.pb.o \
../build/Protocol/Raft.pb.o \
../build/Protocol/RaftLogMetadata.pb.o \
../build/Protocol/ServerControl.pb.o \
../build/Protocol/ServerStats.pb.o 

CC_SRCS += \
../build/Protocol/Client.pb.cc \
../build/Protocol/Raft.pb.cc \
../build/Protocol/RaftLogMetadata.pb.cc \
../build/Protocol/ServerControl.pb.cc \
../build/Protocol/ServerStats.pb.cc 

OBJS += \
./build/Protocol/Client.pb.o \
./build/Protocol/Raft.pb.o \
./build/Protocol/RaftLogMetadata.pb.o \
./build/Protocol/ServerControl.pb.o \
./build/Protocol/ServerStats.pb.o 

CC_DEPS += \
./build/Protocol/Client.pb.d \
./build/Protocol/Raft.pb.d \
./build/Protocol/RaftLogMetadata.pb.d \
./build/Protocol/ServerControl.pb.d \
./build/Protocol/ServerStats.pb.d 


# Each subdirectory must supply rules for building sources it contributes
build/Protocol/%.o: ../build/Protocol/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


