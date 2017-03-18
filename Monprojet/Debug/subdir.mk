################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
O_SRCS += \
../TP1-EX2.o \
../source.o 

S_UPPER_SRCS += \
../TP1-EX2.S 

OBJS += \
./TP1-EX2.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	arm-eabi-as -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


