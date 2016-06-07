################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include test/subdir.mk
-include gtest/xcode/Samples/FrameworkSample/subdir.mk
-include gtest/test/subdir.mk
-include gtest/src/subdir.mk
-include gtest/samples/subdir.mk
-include gtest/codegear/subdir.mk
-include build/test/subdir.mk
-include build/Tree/subdir.mk
-include build/Storage/subdir.mk
-include build/Server/subdir.mk
-include build/RPC/subdir.mk
-include build/Protocol/subdir.mk
-include build/Examples/subdir.mk
-include build/Event/subdir.mk
-include build/Core/subdir.mk
-include build/Client/subdir.mk
-include Tree/subdir.mk
-include Storage/subdir.mk
-include Server/subdir.mk
-include RPC/subdir.mk
-include Examples/subdir.mk
-include Event/subdir.mk
-include Core/subdir.mk
-include Client/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: logCabin

# Tool invocations
logCabin: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: GCC C++ Linker'
	g++ -L/usr/lib/jvm/java-8-oracle/include -L/usr/lib/jvm/java-8-oracle/include/linux -o "logCabin" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C++_DEPS)$(C_DEPS)$(CC_DEPS)$(CPP_DEPS)$(EXECUTABLES)$(CXX_DEPS)$(C_UPPER_DEPS) logCabin
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
