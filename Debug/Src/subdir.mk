################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/DummyTest.c \
../Src/Exception.c \
../Src/main.c \
../Src/stm32f1xx_hal_msp.c \
../Src/stm32f1xx_it.c \
../Src/system_stm32f1xx.c 

OBJS += \
./Src/DummyTest.o \
./Src/Exception.o \
./Src/main.o \
./Src/stm32f1xx_hal_msp.o \
./Src/stm32f1xx_it.o \
./Src/system_stm32f1xx.o 

C_DEPS += \
./Src/DummyTest.d \
./Src/Exception.d \
./Src/main.d \
./Src/stm32f1xx_hal_msp.d \
./Src/stm32f1xx_it.d \
./Src/system_stm32f1xx.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' -DCEXCEPTION_USE_CONFIG_FILE '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F103xB -I"C:/Users/ng_we/Desktop/project/STM32WthCexception/Inc" -I"C:/Users/ng_we/Desktop/project/STM32WthCexception/Inc/CException" -I"C:/Users/ng_we/Desktop/project/STM32WthCexception/Drivers/STM32F1xx_HAL_Driver/Inc" -I"C:/Users/ng_we/Desktop/project/STM32WthCexception/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"C:/Users/ng_we/Desktop/project/STM32WthCexception/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"C:/Users/ng_we/Desktop/project/STM32WthCexception/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


