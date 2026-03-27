#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/VgaController.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/VgaController.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=core/event_handlers/event_handler_initiate_dma_transfer.c core/event_handlers/event_handler_process_input.c core/event_handlers/event_handler_uart_overrun.c core/event_handlers/event_handler_update_input_buffer.c core/event_handlers/event_hanlder_button.c core/interpreter/state_cmd_gfx.c core/interpreter/state_cmd_plot.c core/interpreter/state_cmd_text.c core/interpreter/state_idle.c core/interpreter/state_params.c core/interpreter/terminal_message.c core/interpreter/interpreter.c core/video_terminal/glyphs.c core/video_terminal/video_terminal.c core/video_terminal/images.c core/video_terminal/image_1.c core/video_terminal/image_2.c core/video_terminal/image_3.c core/video_terminal/image_4.c isr/text_generator.c isr/plot_generator.c isr/image_generator.c isr/pixel_generator.c isr/isr.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c mcc_generated_files/pin_manager.c mcc_generated_files/pwm5.c mcc_generated_files/ccp1.c mcc_generated_files/tmr1.c mcc_generated_files/ccp3.c mcc_generated_files/tmr3.c mcc_generated_files/clc1.c mcc_generated_files/tmr2.c mcc_generated_files/clkref.c mcc_generated_files/spi1.c mcc_generated_files/clc3.c mcc_generated_files/tmr4.c mcc_generated_files/pwm6.c mcc_generated_files/clc2.c mcc_generated_files/pwm7.c mcc_generated_files/uart1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/dma1.c mcc_generated_files/dma2.c mcc_generated_files/memory.c middleWares/circular_buffer.c middleWares/baud_detection.c middlewares/reactor.c middleWares/dma_api.c middleWares/button_api.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.p1 ${OBJECTDIR}/core/event_handlers/event_handler_process_input.p1 ${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.p1 ${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.p1 ${OBJECTDIR}/core/event_handlers/event_hanlder_button.p1 ${OBJECTDIR}/core/interpreter/state_cmd_gfx.p1 ${OBJECTDIR}/core/interpreter/state_cmd_plot.p1 ${OBJECTDIR}/core/interpreter/state_cmd_text.p1 ${OBJECTDIR}/core/interpreter/state_idle.p1 ${OBJECTDIR}/core/interpreter/state_params.p1 ${OBJECTDIR}/core/interpreter/terminal_message.p1 ${OBJECTDIR}/core/interpreter/interpreter.p1 ${OBJECTDIR}/core/video_terminal/glyphs.p1 ${OBJECTDIR}/core/video_terminal/video_terminal.p1 ${OBJECTDIR}/core/video_terminal/images.p1 ${OBJECTDIR}/core/video_terminal/image_1.p1 ${OBJECTDIR}/core/video_terminal/image_2.p1 ${OBJECTDIR}/core/video_terminal/image_3.p1 ${OBJECTDIR}/core/video_terminal/image_4.p1 ${OBJECTDIR}/isr/text_generator.p1 ${OBJECTDIR}/isr/plot_generator.p1 ${OBJECTDIR}/isr/image_generator.p1 ${OBJECTDIR}/isr/pixel_generator.p1 ${OBJECTDIR}/isr/isr.p1 ${OBJECTDIR}/mcc_generated_files/mcc.p1 ${OBJECTDIR}/mcc_generated_files/device_config.p1 ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 ${OBJECTDIR}/mcc_generated_files/pwm5.p1 ${OBJECTDIR}/mcc_generated_files/ccp1.p1 ${OBJECTDIR}/mcc_generated_files/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/ccp3.p1 ${OBJECTDIR}/mcc_generated_files/tmr3.p1 ${OBJECTDIR}/mcc_generated_files/clc1.p1 ${OBJECTDIR}/mcc_generated_files/tmr2.p1 ${OBJECTDIR}/mcc_generated_files/clkref.p1 ${OBJECTDIR}/mcc_generated_files/spi1.p1 ${OBJECTDIR}/mcc_generated_files/clc3.p1 ${OBJECTDIR}/mcc_generated_files/tmr4.p1 ${OBJECTDIR}/mcc_generated_files/pwm6.p1 ${OBJECTDIR}/mcc_generated_files/clc2.p1 ${OBJECTDIR}/mcc_generated_files/pwm7.p1 ${OBJECTDIR}/mcc_generated_files/uart1.p1 ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 ${OBJECTDIR}/mcc_generated_files/dma1.p1 ${OBJECTDIR}/mcc_generated_files/dma2.p1 ${OBJECTDIR}/mcc_generated_files/memory.p1 ${OBJECTDIR}/middleWares/circular_buffer.p1 ${OBJECTDIR}/middleWares/baud_detection.p1 ${OBJECTDIR}/middlewares/reactor.p1 ${OBJECTDIR}/middleWares/dma_api.p1 ${OBJECTDIR}/middleWares/button_api.p1 ${OBJECTDIR}/main.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.p1.d ${OBJECTDIR}/core/event_handlers/event_handler_process_input.p1.d ${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.p1.d ${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.p1.d ${OBJECTDIR}/core/event_handlers/event_hanlder_button.p1.d ${OBJECTDIR}/core/interpreter/state_cmd_gfx.p1.d ${OBJECTDIR}/core/interpreter/state_cmd_plot.p1.d ${OBJECTDIR}/core/interpreter/state_cmd_text.p1.d ${OBJECTDIR}/core/interpreter/state_idle.p1.d ${OBJECTDIR}/core/interpreter/state_params.p1.d ${OBJECTDIR}/core/interpreter/terminal_message.p1.d ${OBJECTDIR}/core/interpreter/interpreter.p1.d ${OBJECTDIR}/core/video_terminal/glyphs.p1.d ${OBJECTDIR}/core/video_terminal/video_terminal.p1.d ${OBJECTDIR}/core/video_terminal/images.p1.d ${OBJECTDIR}/core/video_terminal/image_1.p1.d ${OBJECTDIR}/core/video_terminal/image_2.p1.d ${OBJECTDIR}/core/video_terminal/image_3.p1.d ${OBJECTDIR}/core/video_terminal/image_4.p1.d ${OBJECTDIR}/isr/text_generator.p1.d ${OBJECTDIR}/isr/plot_generator.p1.d ${OBJECTDIR}/isr/image_generator.p1.d ${OBJECTDIR}/isr/pixel_generator.p1.d ${OBJECTDIR}/isr/isr.p1.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d ${OBJECTDIR}/mcc_generated_files/device_config.p1.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d ${OBJECTDIR}/mcc_generated_files/pwm5.p1.d ${OBJECTDIR}/mcc_generated_files/ccp1.p1.d ${OBJECTDIR}/mcc_generated_files/tmr1.p1.d ${OBJECTDIR}/mcc_generated_files/ccp3.p1.d ${OBJECTDIR}/mcc_generated_files/tmr3.p1.d ${OBJECTDIR}/mcc_generated_files/clc1.p1.d ${OBJECTDIR}/mcc_generated_files/tmr2.p1.d ${OBJECTDIR}/mcc_generated_files/clkref.p1.d ${OBJECTDIR}/mcc_generated_files/spi1.p1.d ${OBJECTDIR}/mcc_generated_files/clc3.p1.d ${OBJECTDIR}/mcc_generated_files/tmr4.p1.d ${OBJECTDIR}/mcc_generated_files/pwm6.p1.d ${OBJECTDIR}/mcc_generated_files/clc2.p1.d ${OBJECTDIR}/mcc_generated_files/pwm7.p1.d ${OBJECTDIR}/mcc_generated_files/uart1.p1.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d ${OBJECTDIR}/mcc_generated_files/dma1.p1.d ${OBJECTDIR}/mcc_generated_files/dma2.p1.d ${OBJECTDIR}/mcc_generated_files/memory.p1.d ${OBJECTDIR}/middleWares/circular_buffer.p1.d ${OBJECTDIR}/middleWares/baud_detection.p1.d ${OBJECTDIR}/middlewares/reactor.p1.d ${OBJECTDIR}/middleWares/dma_api.p1.d ${OBJECTDIR}/middleWares/button_api.p1.d ${OBJECTDIR}/main.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.p1 ${OBJECTDIR}/core/event_handlers/event_handler_process_input.p1 ${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.p1 ${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.p1 ${OBJECTDIR}/core/event_handlers/event_hanlder_button.p1 ${OBJECTDIR}/core/interpreter/state_cmd_gfx.p1 ${OBJECTDIR}/core/interpreter/state_cmd_plot.p1 ${OBJECTDIR}/core/interpreter/state_cmd_text.p1 ${OBJECTDIR}/core/interpreter/state_idle.p1 ${OBJECTDIR}/core/interpreter/state_params.p1 ${OBJECTDIR}/core/interpreter/terminal_message.p1 ${OBJECTDIR}/core/interpreter/interpreter.p1 ${OBJECTDIR}/core/video_terminal/glyphs.p1 ${OBJECTDIR}/core/video_terminal/video_terminal.p1 ${OBJECTDIR}/core/video_terminal/images.p1 ${OBJECTDIR}/core/video_terminal/image_1.p1 ${OBJECTDIR}/core/video_terminal/image_2.p1 ${OBJECTDIR}/core/video_terminal/image_3.p1 ${OBJECTDIR}/core/video_terminal/image_4.p1 ${OBJECTDIR}/isr/text_generator.p1 ${OBJECTDIR}/isr/plot_generator.p1 ${OBJECTDIR}/isr/image_generator.p1 ${OBJECTDIR}/isr/pixel_generator.p1 ${OBJECTDIR}/isr/isr.p1 ${OBJECTDIR}/mcc_generated_files/mcc.p1 ${OBJECTDIR}/mcc_generated_files/device_config.p1 ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 ${OBJECTDIR}/mcc_generated_files/pwm5.p1 ${OBJECTDIR}/mcc_generated_files/ccp1.p1 ${OBJECTDIR}/mcc_generated_files/tmr1.p1 ${OBJECTDIR}/mcc_generated_files/ccp3.p1 ${OBJECTDIR}/mcc_generated_files/tmr3.p1 ${OBJECTDIR}/mcc_generated_files/clc1.p1 ${OBJECTDIR}/mcc_generated_files/tmr2.p1 ${OBJECTDIR}/mcc_generated_files/clkref.p1 ${OBJECTDIR}/mcc_generated_files/spi1.p1 ${OBJECTDIR}/mcc_generated_files/clc3.p1 ${OBJECTDIR}/mcc_generated_files/tmr4.p1 ${OBJECTDIR}/mcc_generated_files/pwm6.p1 ${OBJECTDIR}/mcc_generated_files/clc2.p1 ${OBJECTDIR}/mcc_generated_files/pwm7.p1 ${OBJECTDIR}/mcc_generated_files/uart1.p1 ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 ${OBJECTDIR}/mcc_generated_files/dma1.p1 ${OBJECTDIR}/mcc_generated_files/dma2.p1 ${OBJECTDIR}/mcc_generated_files/memory.p1 ${OBJECTDIR}/middleWares/circular_buffer.p1 ${OBJECTDIR}/middleWares/baud_detection.p1 ${OBJECTDIR}/middlewares/reactor.p1 ${OBJECTDIR}/middleWares/dma_api.p1 ${OBJECTDIR}/middleWares/button_api.p1 ${OBJECTDIR}/main.p1

# Source Files
SOURCEFILES=core/event_handlers/event_handler_initiate_dma_transfer.c core/event_handlers/event_handler_process_input.c core/event_handlers/event_handler_uart_overrun.c core/event_handlers/event_handler_update_input_buffer.c core/event_handlers/event_hanlder_button.c core/interpreter/state_cmd_gfx.c core/interpreter/state_cmd_plot.c core/interpreter/state_cmd_text.c core/interpreter/state_idle.c core/interpreter/state_params.c core/interpreter/terminal_message.c core/interpreter/interpreter.c core/video_terminal/glyphs.c core/video_terminal/video_terminal.c core/video_terminal/images.c core/video_terminal/image_1.c core/video_terminal/image_2.c core/video_terminal/image_3.c core/video_terminal/image_4.c isr/text_generator.c isr/plot_generator.c isr/image_generator.c isr/pixel_generator.c isr/isr.c mcc_generated_files/mcc.c mcc_generated_files/device_config.c mcc_generated_files/pin_manager.c mcc_generated_files/pwm5.c mcc_generated_files/ccp1.c mcc_generated_files/tmr1.c mcc_generated_files/ccp3.c mcc_generated_files/tmr3.c mcc_generated_files/clc1.c mcc_generated_files/tmr2.c mcc_generated_files/clkref.c mcc_generated_files/spi1.c mcc_generated_files/clc3.c mcc_generated_files/tmr4.c mcc_generated_files/pwm6.c mcc_generated_files/clc2.c mcc_generated_files/pwm7.c mcc_generated_files/uart1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/dma1.c mcc_generated_files/dma2.c mcc_generated_files/memory.c middleWares/circular_buffer.c middleWares/baud_detection.c middlewares/reactor.c middleWares/dma_api.c middleWares/button_api.c main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/VgaController.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F47K42
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.p1: core/event_handlers/event_handler_initiate_dma_transfer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/event_handlers" 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.p1.d 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.p1 core/event_handlers/event_handler_initiate_dma_transfer.c 
	@-${MV} ${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.d ${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/event_handlers/event_handler_process_input.p1: core/event_handlers/event_handler_process_input.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/event_handlers" 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_process_input.p1.d 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_process_input.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/event_handlers/event_handler_process_input.p1 core/event_handlers/event_handler_process_input.c 
	@-${MV} ${OBJECTDIR}/core/event_handlers/event_handler_process_input.d ${OBJECTDIR}/core/event_handlers/event_handler_process_input.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/event_handlers/event_handler_process_input.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.p1: core/event_handlers/event_handler_uart_overrun.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/event_handlers" 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.p1.d 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.p1 core/event_handlers/event_handler_uart_overrun.c 
	@-${MV} ${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.d ${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.p1: core/event_handlers/event_handler_update_input_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/event_handlers" 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.p1.d 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.p1 core/event_handlers/event_handler_update_input_buffer.c 
	@-${MV} ${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.d ${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/event_handlers/event_hanlder_button.p1: core/event_handlers/event_hanlder_button.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/event_handlers" 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_hanlder_button.p1.d 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_hanlder_button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/event_handlers/event_hanlder_button.p1 core/event_handlers/event_hanlder_button.c 
	@-${MV} ${OBJECTDIR}/core/event_handlers/event_hanlder_button.d ${OBJECTDIR}/core/event_handlers/event_hanlder_button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/event_handlers/event_hanlder_button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/interpreter/state_cmd_gfx.p1: core/interpreter/state_cmd_gfx.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/interpreter" 
	@${RM} ${OBJECTDIR}/core/interpreter/state_cmd_gfx.p1.d 
	@${RM} ${OBJECTDIR}/core/interpreter/state_cmd_gfx.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/interpreter/state_cmd_gfx.p1 core/interpreter/state_cmd_gfx.c 
	@-${MV} ${OBJECTDIR}/core/interpreter/state_cmd_gfx.d ${OBJECTDIR}/core/interpreter/state_cmd_gfx.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/interpreter/state_cmd_gfx.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/interpreter/state_cmd_plot.p1: core/interpreter/state_cmd_plot.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/interpreter" 
	@${RM} ${OBJECTDIR}/core/interpreter/state_cmd_plot.p1.d 
	@${RM} ${OBJECTDIR}/core/interpreter/state_cmd_plot.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/interpreter/state_cmd_plot.p1 core/interpreter/state_cmd_plot.c 
	@-${MV} ${OBJECTDIR}/core/interpreter/state_cmd_plot.d ${OBJECTDIR}/core/interpreter/state_cmd_plot.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/interpreter/state_cmd_plot.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/interpreter/state_cmd_text.p1: core/interpreter/state_cmd_text.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/interpreter" 
	@${RM} ${OBJECTDIR}/core/interpreter/state_cmd_text.p1.d 
	@${RM} ${OBJECTDIR}/core/interpreter/state_cmd_text.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/interpreter/state_cmd_text.p1 core/interpreter/state_cmd_text.c 
	@-${MV} ${OBJECTDIR}/core/interpreter/state_cmd_text.d ${OBJECTDIR}/core/interpreter/state_cmd_text.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/interpreter/state_cmd_text.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/interpreter/state_idle.p1: core/interpreter/state_idle.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/interpreter" 
	@${RM} ${OBJECTDIR}/core/interpreter/state_idle.p1.d 
	@${RM} ${OBJECTDIR}/core/interpreter/state_idle.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/interpreter/state_idle.p1 core/interpreter/state_idle.c 
	@-${MV} ${OBJECTDIR}/core/interpreter/state_idle.d ${OBJECTDIR}/core/interpreter/state_idle.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/interpreter/state_idle.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/interpreter/state_params.p1: core/interpreter/state_params.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/interpreter" 
	@${RM} ${OBJECTDIR}/core/interpreter/state_params.p1.d 
	@${RM} ${OBJECTDIR}/core/interpreter/state_params.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/interpreter/state_params.p1 core/interpreter/state_params.c 
	@-${MV} ${OBJECTDIR}/core/interpreter/state_params.d ${OBJECTDIR}/core/interpreter/state_params.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/interpreter/state_params.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/interpreter/terminal_message.p1: core/interpreter/terminal_message.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/interpreter" 
	@${RM} ${OBJECTDIR}/core/interpreter/terminal_message.p1.d 
	@${RM} ${OBJECTDIR}/core/interpreter/terminal_message.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/interpreter/terminal_message.p1 core/interpreter/terminal_message.c 
	@-${MV} ${OBJECTDIR}/core/interpreter/terminal_message.d ${OBJECTDIR}/core/interpreter/terminal_message.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/interpreter/terminal_message.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/interpreter/interpreter.p1: core/interpreter/interpreter.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/interpreter" 
	@${RM} ${OBJECTDIR}/core/interpreter/interpreter.p1.d 
	@${RM} ${OBJECTDIR}/core/interpreter/interpreter.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/interpreter/interpreter.p1 core/interpreter/interpreter.c 
	@-${MV} ${OBJECTDIR}/core/interpreter/interpreter.d ${OBJECTDIR}/core/interpreter/interpreter.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/interpreter/interpreter.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/video_terminal/glyphs.p1: core/video_terminal/glyphs.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/video_terminal" 
	@${RM} ${OBJECTDIR}/core/video_terminal/glyphs.p1.d 
	@${RM} ${OBJECTDIR}/core/video_terminal/glyphs.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/video_terminal/glyphs.p1 core/video_terminal/glyphs.c 
	@-${MV} ${OBJECTDIR}/core/video_terminal/glyphs.d ${OBJECTDIR}/core/video_terminal/glyphs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/video_terminal/glyphs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/video_terminal/video_terminal.p1: core/video_terminal/video_terminal.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/video_terminal" 
	@${RM} ${OBJECTDIR}/core/video_terminal/video_terminal.p1.d 
	@${RM} ${OBJECTDIR}/core/video_terminal/video_terminal.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/video_terminal/video_terminal.p1 core/video_terminal/video_terminal.c 
	@-${MV} ${OBJECTDIR}/core/video_terminal/video_terminal.d ${OBJECTDIR}/core/video_terminal/video_terminal.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/video_terminal/video_terminal.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/video_terminal/images.p1: core/video_terminal/images.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/video_terminal" 
	@${RM} ${OBJECTDIR}/core/video_terminal/images.p1.d 
	@${RM} ${OBJECTDIR}/core/video_terminal/images.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/video_terminal/images.p1 core/video_terminal/images.c 
	@-${MV} ${OBJECTDIR}/core/video_terminal/images.d ${OBJECTDIR}/core/video_terminal/images.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/video_terminal/images.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/video_terminal/image_1.p1: core/video_terminal/image_1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/video_terminal" 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_1.p1.d 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/video_terminal/image_1.p1 core/video_terminal/image_1.c 
	@-${MV} ${OBJECTDIR}/core/video_terminal/image_1.d ${OBJECTDIR}/core/video_terminal/image_1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/video_terminal/image_1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/video_terminal/image_2.p1: core/video_terminal/image_2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/video_terminal" 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_2.p1.d 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/video_terminal/image_2.p1 core/video_terminal/image_2.c 
	@-${MV} ${OBJECTDIR}/core/video_terminal/image_2.d ${OBJECTDIR}/core/video_terminal/image_2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/video_terminal/image_2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/video_terminal/image_3.p1: core/video_terminal/image_3.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/video_terminal" 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_3.p1.d 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_3.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/video_terminal/image_3.p1 core/video_terminal/image_3.c 
	@-${MV} ${OBJECTDIR}/core/video_terminal/image_3.d ${OBJECTDIR}/core/video_terminal/image_3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/video_terminal/image_3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/video_terminal/image_4.p1: core/video_terminal/image_4.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/video_terminal" 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_4.p1.d 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_4.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/video_terminal/image_4.p1 core/video_terminal/image_4.c 
	@-${MV} ${OBJECTDIR}/core/video_terminal/image_4.d ${OBJECTDIR}/core/video_terminal/image_4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/video_terminal/image_4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/isr/text_generator.p1: isr/text_generator.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/isr" 
	@${RM} ${OBJECTDIR}/isr/text_generator.p1.d 
	@${RM} ${OBJECTDIR}/isr/text_generator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/isr/text_generator.p1 isr/text_generator.c 
	@-${MV} ${OBJECTDIR}/isr/text_generator.d ${OBJECTDIR}/isr/text_generator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/isr/text_generator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/isr/plot_generator.p1: isr/plot_generator.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/isr" 
	@${RM} ${OBJECTDIR}/isr/plot_generator.p1.d 
	@${RM} ${OBJECTDIR}/isr/plot_generator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/isr/plot_generator.p1 isr/plot_generator.c 
	@-${MV} ${OBJECTDIR}/isr/plot_generator.d ${OBJECTDIR}/isr/plot_generator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/isr/plot_generator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/isr/image_generator.p1: isr/image_generator.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/isr" 
	@${RM} ${OBJECTDIR}/isr/image_generator.p1.d 
	@${RM} ${OBJECTDIR}/isr/image_generator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/isr/image_generator.p1 isr/image_generator.c 
	@-${MV} ${OBJECTDIR}/isr/image_generator.d ${OBJECTDIR}/isr/image_generator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/isr/image_generator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/isr/pixel_generator.p1: isr/pixel_generator.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/isr" 
	@${RM} ${OBJECTDIR}/isr/pixel_generator.p1.d 
	@${RM} ${OBJECTDIR}/isr/pixel_generator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/isr/pixel_generator.p1 isr/pixel_generator.c 
	@-${MV} ${OBJECTDIR}/isr/pixel_generator.d ${OBJECTDIR}/isr/pixel_generator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/isr/pixel_generator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/isr/isr.p1: isr/isr.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/isr" 
	@${RM} ${OBJECTDIR}/isr/isr.p1.d 
	@${RM} ${OBJECTDIR}/isr/isr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/isr/isr.p1 isr/isr.c 
	@-${MV} ${OBJECTDIR}/isr/isr.d ${OBJECTDIR}/isr/isr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/isr/isr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/mcc.p1: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/mcc.p1 mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/mcc.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/device_config.p1: mcc_generated_files/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/device_config.p1 mcc_generated_files/device_config.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/device_config.d ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.p1: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pin_manager.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm5.p1: mcc_generated_files/pwm5.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm5.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm5.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/pwm5.p1 mcc_generated_files/pwm5.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm5.d ${OBJECTDIR}/mcc_generated_files/pwm5.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm5.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/ccp1.p1: mcc_generated_files/ccp1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ccp1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ccp1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/ccp1.p1 mcc_generated_files/ccp1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/ccp1.d ${OBJECTDIR}/mcc_generated_files/ccp1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/ccp1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr1.p1: mcc_generated_files/tmr1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/tmr1.p1 mcc_generated_files/tmr1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr1.d ${OBJECTDIR}/mcc_generated_files/tmr1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/ccp3.p1: mcc_generated_files/ccp3.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ccp3.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ccp3.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/ccp3.p1 mcc_generated_files/ccp3.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/ccp3.d ${OBJECTDIR}/mcc_generated_files/ccp3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/ccp3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr3.p1: mcc_generated_files/tmr3.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/tmr3.p1 mcc_generated_files/tmr3.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr3.d ${OBJECTDIR}/mcc_generated_files/tmr3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/clc1.p1: mcc_generated_files/clc1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/clc1.p1 mcc_generated_files/clc1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/clc1.d ${OBJECTDIR}/mcc_generated_files/clc1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/clc1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr2.p1: mcc_generated_files/tmr2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/tmr2.p1 mcc_generated_files/tmr2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr2.d ${OBJECTDIR}/mcc_generated_files/tmr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/clkref.p1: mcc_generated_files/clkref.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clkref.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clkref.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/clkref.p1 mcc_generated_files/clkref.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/clkref.d ${OBJECTDIR}/mcc_generated_files/clkref.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/clkref.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/spi1.p1: mcc_generated_files/spi1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/spi1.p1 mcc_generated_files/spi1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/spi1.d ${OBJECTDIR}/mcc_generated_files/spi1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/spi1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/clc3.p1: mcc_generated_files/clc3.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc3.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc3.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/clc3.p1 mcc_generated_files/clc3.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/clc3.d ${OBJECTDIR}/mcc_generated_files/clc3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/clc3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr4.p1: mcc_generated_files/tmr4.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr4.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr4.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/tmr4.p1 mcc_generated_files/tmr4.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr4.d ${OBJECTDIR}/mcc_generated_files/tmr4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm6.p1: mcc_generated_files/pwm6.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm6.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm6.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/pwm6.p1 mcc_generated_files/pwm6.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm6.d ${OBJECTDIR}/mcc_generated_files/pwm6.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm6.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/clc2.p1: mcc_generated_files/clc2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/clc2.p1 mcc_generated_files/clc2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/clc2.d ${OBJECTDIR}/mcc_generated_files/clc2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/clc2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm7.p1: mcc_generated_files/pwm7.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm7.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm7.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/pwm7.p1 mcc_generated_files/pwm7.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm7.d ${OBJECTDIR}/mcc_generated_files/pwm7.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm7.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart1.p1: mcc_generated_files/uart1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/uart1.p1 mcc_generated_files/uart1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart1.d ${OBJECTDIR}/mcc_generated_files/uart1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 mcc_generated_files/interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/dma1.p1: mcc_generated_files/dma1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/dma1.p1 mcc_generated_files/dma1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/dma1.d ${OBJECTDIR}/mcc_generated_files/dma1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/dma1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/dma2.p1: mcc_generated_files/dma2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/dma2.p1 mcc_generated_files/dma2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/dma2.d ${OBJECTDIR}/mcc_generated_files/dma2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/dma2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/memory.p1: mcc_generated_files/memory.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/memory.p1 mcc_generated_files/memory.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/memory.d ${OBJECTDIR}/mcc_generated_files/memory.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/memory.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/middleWares/circular_buffer.p1: middleWares/circular_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/middleWares" 
	@${RM} ${OBJECTDIR}/middleWares/circular_buffer.p1.d 
	@${RM} ${OBJECTDIR}/middleWares/circular_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/middleWares/circular_buffer.p1 middleWares/circular_buffer.c 
	@-${MV} ${OBJECTDIR}/middleWares/circular_buffer.d ${OBJECTDIR}/middleWares/circular_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/middleWares/circular_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/middleWares/baud_detection.p1: middleWares/baud_detection.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/middleWares" 
	@${RM} ${OBJECTDIR}/middleWares/baud_detection.p1.d 
	@${RM} ${OBJECTDIR}/middleWares/baud_detection.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/middleWares/baud_detection.p1 middleWares/baud_detection.c 
	@-${MV} ${OBJECTDIR}/middleWares/baud_detection.d ${OBJECTDIR}/middleWares/baud_detection.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/middleWares/baud_detection.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/middlewares/reactor.p1: middlewares/reactor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/middlewares" 
	@${RM} ${OBJECTDIR}/middlewares/reactor.p1.d 
	@${RM} ${OBJECTDIR}/middlewares/reactor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/middlewares/reactor.p1 middlewares/reactor.c 
	@-${MV} ${OBJECTDIR}/middlewares/reactor.d ${OBJECTDIR}/middlewares/reactor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/middlewares/reactor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/middleWares/dma_api.p1: middleWares/dma_api.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/middleWares" 
	@${RM} ${OBJECTDIR}/middleWares/dma_api.p1.d 
	@${RM} ${OBJECTDIR}/middleWares/dma_api.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/middleWares/dma_api.p1 middleWares/dma_api.c 
	@-${MV} ${OBJECTDIR}/middleWares/dma_api.d ${OBJECTDIR}/middleWares/dma_api.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/middleWares/dma_api.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/middleWares/button_api.p1: middleWares/button_api.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/middleWares" 
	@${RM} ${OBJECTDIR}/middleWares/button_api.p1.d 
	@${RM} ${OBJECTDIR}/middleWares/button_api.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/middleWares/button_api.p1 middleWares/button_api.c 
	@-${MV} ${OBJECTDIR}/middleWares/button_api.d ${OBJECTDIR}/middleWares/button_api.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/middleWares/button_api.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.p1: core/event_handlers/event_handler_initiate_dma_transfer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/event_handlers" 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.p1.d 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.p1 core/event_handlers/event_handler_initiate_dma_transfer.c 
	@-${MV} ${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.d ${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/event_handlers/event_handler_initiate_dma_transfer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/event_handlers/event_handler_process_input.p1: core/event_handlers/event_handler_process_input.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/event_handlers" 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_process_input.p1.d 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_process_input.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/event_handlers/event_handler_process_input.p1 core/event_handlers/event_handler_process_input.c 
	@-${MV} ${OBJECTDIR}/core/event_handlers/event_handler_process_input.d ${OBJECTDIR}/core/event_handlers/event_handler_process_input.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/event_handlers/event_handler_process_input.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.p1: core/event_handlers/event_handler_uart_overrun.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/event_handlers" 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.p1.d 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.p1 core/event_handlers/event_handler_uart_overrun.c 
	@-${MV} ${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.d ${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/event_handlers/event_handler_uart_overrun.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.p1: core/event_handlers/event_handler_update_input_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/event_handlers" 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.p1.d 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.p1 core/event_handlers/event_handler_update_input_buffer.c 
	@-${MV} ${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.d ${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/event_handlers/event_handler_update_input_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/event_handlers/event_hanlder_button.p1: core/event_handlers/event_hanlder_button.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/event_handlers" 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_hanlder_button.p1.d 
	@${RM} ${OBJECTDIR}/core/event_handlers/event_hanlder_button.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/event_handlers/event_hanlder_button.p1 core/event_handlers/event_hanlder_button.c 
	@-${MV} ${OBJECTDIR}/core/event_handlers/event_hanlder_button.d ${OBJECTDIR}/core/event_handlers/event_hanlder_button.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/event_handlers/event_hanlder_button.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/interpreter/state_cmd_gfx.p1: core/interpreter/state_cmd_gfx.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/interpreter" 
	@${RM} ${OBJECTDIR}/core/interpreter/state_cmd_gfx.p1.d 
	@${RM} ${OBJECTDIR}/core/interpreter/state_cmd_gfx.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/interpreter/state_cmd_gfx.p1 core/interpreter/state_cmd_gfx.c 
	@-${MV} ${OBJECTDIR}/core/interpreter/state_cmd_gfx.d ${OBJECTDIR}/core/interpreter/state_cmd_gfx.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/interpreter/state_cmd_gfx.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/interpreter/state_cmd_plot.p1: core/interpreter/state_cmd_plot.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/interpreter" 
	@${RM} ${OBJECTDIR}/core/interpreter/state_cmd_plot.p1.d 
	@${RM} ${OBJECTDIR}/core/interpreter/state_cmd_plot.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/interpreter/state_cmd_plot.p1 core/interpreter/state_cmd_plot.c 
	@-${MV} ${OBJECTDIR}/core/interpreter/state_cmd_plot.d ${OBJECTDIR}/core/interpreter/state_cmd_plot.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/interpreter/state_cmd_plot.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/interpreter/state_cmd_text.p1: core/interpreter/state_cmd_text.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/interpreter" 
	@${RM} ${OBJECTDIR}/core/interpreter/state_cmd_text.p1.d 
	@${RM} ${OBJECTDIR}/core/interpreter/state_cmd_text.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/interpreter/state_cmd_text.p1 core/interpreter/state_cmd_text.c 
	@-${MV} ${OBJECTDIR}/core/interpreter/state_cmd_text.d ${OBJECTDIR}/core/interpreter/state_cmd_text.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/interpreter/state_cmd_text.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/interpreter/state_idle.p1: core/interpreter/state_idle.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/interpreter" 
	@${RM} ${OBJECTDIR}/core/interpreter/state_idle.p1.d 
	@${RM} ${OBJECTDIR}/core/interpreter/state_idle.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/interpreter/state_idle.p1 core/interpreter/state_idle.c 
	@-${MV} ${OBJECTDIR}/core/interpreter/state_idle.d ${OBJECTDIR}/core/interpreter/state_idle.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/interpreter/state_idle.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/interpreter/state_params.p1: core/interpreter/state_params.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/interpreter" 
	@${RM} ${OBJECTDIR}/core/interpreter/state_params.p1.d 
	@${RM} ${OBJECTDIR}/core/interpreter/state_params.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/interpreter/state_params.p1 core/interpreter/state_params.c 
	@-${MV} ${OBJECTDIR}/core/interpreter/state_params.d ${OBJECTDIR}/core/interpreter/state_params.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/interpreter/state_params.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/interpreter/terminal_message.p1: core/interpreter/terminal_message.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/interpreter" 
	@${RM} ${OBJECTDIR}/core/interpreter/terminal_message.p1.d 
	@${RM} ${OBJECTDIR}/core/interpreter/terminal_message.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/interpreter/terminal_message.p1 core/interpreter/terminal_message.c 
	@-${MV} ${OBJECTDIR}/core/interpreter/terminal_message.d ${OBJECTDIR}/core/interpreter/terminal_message.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/interpreter/terminal_message.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/interpreter/interpreter.p1: core/interpreter/interpreter.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/interpreter" 
	@${RM} ${OBJECTDIR}/core/interpreter/interpreter.p1.d 
	@${RM} ${OBJECTDIR}/core/interpreter/interpreter.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/interpreter/interpreter.p1 core/interpreter/interpreter.c 
	@-${MV} ${OBJECTDIR}/core/interpreter/interpreter.d ${OBJECTDIR}/core/interpreter/interpreter.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/interpreter/interpreter.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/video_terminal/glyphs.p1: core/video_terminal/glyphs.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/video_terminal" 
	@${RM} ${OBJECTDIR}/core/video_terminal/glyphs.p1.d 
	@${RM} ${OBJECTDIR}/core/video_terminal/glyphs.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/video_terminal/glyphs.p1 core/video_terminal/glyphs.c 
	@-${MV} ${OBJECTDIR}/core/video_terminal/glyphs.d ${OBJECTDIR}/core/video_terminal/glyphs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/video_terminal/glyphs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/video_terminal/video_terminal.p1: core/video_terminal/video_terminal.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/video_terminal" 
	@${RM} ${OBJECTDIR}/core/video_terminal/video_terminal.p1.d 
	@${RM} ${OBJECTDIR}/core/video_terminal/video_terminal.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/video_terminal/video_terminal.p1 core/video_terminal/video_terminal.c 
	@-${MV} ${OBJECTDIR}/core/video_terminal/video_terminal.d ${OBJECTDIR}/core/video_terminal/video_terminal.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/video_terminal/video_terminal.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/video_terminal/images.p1: core/video_terminal/images.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/video_terminal" 
	@${RM} ${OBJECTDIR}/core/video_terminal/images.p1.d 
	@${RM} ${OBJECTDIR}/core/video_terminal/images.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/video_terminal/images.p1 core/video_terminal/images.c 
	@-${MV} ${OBJECTDIR}/core/video_terminal/images.d ${OBJECTDIR}/core/video_terminal/images.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/video_terminal/images.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/video_terminal/image_1.p1: core/video_terminal/image_1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/video_terminal" 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_1.p1.d 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/video_terminal/image_1.p1 core/video_terminal/image_1.c 
	@-${MV} ${OBJECTDIR}/core/video_terminal/image_1.d ${OBJECTDIR}/core/video_terminal/image_1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/video_terminal/image_1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/video_terminal/image_2.p1: core/video_terminal/image_2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/video_terminal" 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_2.p1.d 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/video_terminal/image_2.p1 core/video_terminal/image_2.c 
	@-${MV} ${OBJECTDIR}/core/video_terminal/image_2.d ${OBJECTDIR}/core/video_terminal/image_2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/video_terminal/image_2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/video_terminal/image_3.p1: core/video_terminal/image_3.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/video_terminal" 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_3.p1.d 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_3.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/video_terminal/image_3.p1 core/video_terminal/image_3.c 
	@-${MV} ${OBJECTDIR}/core/video_terminal/image_3.d ${OBJECTDIR}/core/video_terminal/image_3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/video_terminal/image_3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/core/video_terminal/image_4.p1: core/video_terminal/image_4.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/core/video_terminal" 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_4.p1.d 
	@${RM} ${OBJECTDIR}/core/video_terminal/image_4.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/core/video_terminal/image_4.p1 core/video_terminal/image_4.c 
	@-${MV} ${OBJECTDIR}/core/video_terminal/image_4.d ${OBJECTDIR}/core/video_terminal/image_4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/core/video_terminal/image_4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/isr/text_generator.p1: isr/text_generator.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/isr" 
	@${RM} ${OBJECTDIR}/isr/text_generator.p1.d 
	@${RM} ${OBJECTDIR}/isr/text_generator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/isr/text_generator.p1 isr/text_generator.c 
	@-${MV} ${OBJECTDIR}/isr/text_generator.d ${OBJECTDIR}/isr/text_generator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/isr/text_generator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/isr/plot_generator.p1: isr/plot_generator.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/isr" 
	@${RM} ${OBJECTDIR}/isr/plot_generator.p1.d 
	@${RM} ${OBJECTDIR}/isr/plot_generator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/isr/plot_generator.p1 isr/plot_generator.c 
	@-${MV} ${OBJECTDIR}/isr/plot_generator.d ${OBJECTDIR}/isr/plot_generator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/isr/plot_generator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/isr/image_generator.p1: isr/image_generator.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/isr" 
	@${RM} ${OBJECTDIR}/isr/image_generator.p1.d 
	@${RM} ${OBJECTDIR}/isr/image_generator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/isr/image_generator.p1 isr/image_generator.c 
	@-${MV} ${OBJECTDIR}/isr/image_generator.d ${OBJECTDIR}/isr/image_generator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/isr/image_generator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/isr/pixel_generator.p1: isr/pixel_generator.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/isr" 
	@${RM} ${OBJECTDIR}/isr/pixel_generator.p1.d 
	@${RM} ${OBJECTDIR}/isr/pixel_generator.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/isr/pixel_generator.p1 isr/pixel_generator.c 
	@-${MV} ${OBJECTDIR}/isr/pixel_generator.d ${OBJECTDIR}/isr/pixel_generator.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/isr/pixel_generator.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/isr/isr.p1: isr/isr.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/isr" 
	@${RM} ${OBJECTDIR}/isr/isr.p1.d 
	@${RM} ${OBJECTDIR}/isr/isr.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/isr/isr.p1 isr/isr.c 
	@-${MV} ${OBJECTDIR}/isr/isr.d ${OBJECTDIR}/isr/isr.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/isr/isr.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/mcc.p1: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/mcc.p1 mcc_generated_files/mcc.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/mcc.d ${OBJECTDIR}/mcc_generated_files/mcc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/mcc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/device_config.p1: mcc_generated_files/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/device_config.p1 mcc_generated_files/device_config.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/device_config.d ${OBJECTDIR}/mcc_generated_files/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pin_manager.p1: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/pin_manager.p1 mcc_generated_files/pin_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pin_manager.d ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pin_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm5.p1: mcc_generated_files/pwm5.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm5.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm5.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/pwm5.p1 mcc_generated_files/pwm5.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm5.d ${OBJECTDIR}/mcc_generated_files/pwm5.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm5.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/ccp1.p1: mcc_generated_files/ccp1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ccp1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ccp1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/ccp1.p1 mcc_generated_files/ccp1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/ccp1.d ${OBJECTDIR}/mcc_generated_files/ccp1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/ccp1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr1.p1: mcc_generated_files/tmr1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/tmr1.p1 mcc_generated_files/tmr1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr1.d ${OBJECTDIR}/mcc_generated_files/tmr1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/ccp3.p1: mcc_generated_files/ccp3.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ccp3.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/ccp3.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/ccp3.p1 mcc_generated_files/ccp3.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/ccp3.d ${OBJECTDIR}/mcc_generated_files/ccp3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/ccp3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr3.p1: mcc_generated_files/tmr3.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr3.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/tmr3.p1 mcc_generated_files/tmr3.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr3.d ${OBJECTDIR}/mcc_generated_files/tmr3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/clc1.p1: mcc_generated_files/clc1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/clc1.p1 mcc_generated_files/clc1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/clc1.d ${OBJECTDIR}/mcc_generated_files/clc1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/clc1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr2.p1: mcc_generated_files/tmr2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/tmr2.p1 mcc_generated_files/tmr2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr2.d ${OBJECTDIR}/mcc_generated_files/tmr2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/clkref.p1: mcc_generated_files/clkref.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clkref.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clkref.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/clkref.p1 mcc_generated_files/clkref.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/clkref.d ${OBJECTDIR}/mcc_generated_files/clkref.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/clkref.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/spi1.p1: mcc_generated_files/spi1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/spi1.p1 mcc_generated_files/spi1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/spi1.d ${OBJECTDIR}/mcc_generated_files/spi1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/spi1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/clc3.p1: mcc_generated_files/clc3.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc3.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc3.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/clc3.p1 mcc_generated_files/clc3.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/clc3.d ${OBJECTDIR}/mcc_generated_files/clc3.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/clc3.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/tmr4.p1: mcc_generated_files/tmr4.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr4.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr4.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/tmr4.p1 mcc_generated_files/tmr4.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/tmr4.d ${OBJECTDIR}/mcc_generated_files/tmr4.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/tmr4.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm6.p1: mcc_generated_files/pwm6.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm6.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm6.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/pwm6.p1 mcc_generated_files/pwm6.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm6.d ${OBJECTDIR}/mcc_generated_files/pwm6.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm6.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/clc2.p1: mcc_generated_files/clc2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clc2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/clc2.p1 mcc_generated_files/clc2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/clc2.d ${OBJECTDIR}/mcc_generated_files/clc2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/clc2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/pwm7.p1: mcc_generated_files/pwm7.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm7.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm7.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/pwm7.p1 mcc_generated_files/pwm7.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/pwm7.d ${OBJECTDIR}/mcc_generated_files/pwm7.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/pwm7.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/uart1.p1: mcc_generated_files/uart1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/uart1.p1 mcc_generated_files/uart1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/uart1.d ${OBJECTDIR}/mcc_generated_files/uart1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/uart1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1 mcc_generated_files/interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/dma1.p1: mcc_generated_files/dma1.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma1.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma1.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/dma1.p1 mcc_generated_files/dma1.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/dma1.d ${OBJECTDIR}/mcc_generated_files/dma1.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/dma1.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/dma2.p1: mcc_generated_files/dma2.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma2.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/dma2.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/dma2.p1 mcc_generated_files/dma2.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/dma2.d ${OBJECTDIR}/mcc_generated_files/dma2.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/dma2.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcc_generated_files/memory.p1: mcc_generated_files/memory.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory.p1.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/memory.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/mcc_generated_files/memory.p1 mcc_generated_files/memory.c 
	@-${MV} ${OBJECTDIR}/mcc_generated_files/memory.d ${OBJECTDIR}/mcc_generated_files/memory.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcc_generated_files/memory.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/middleWares/circular_buffer.p1: middleWares/circular_buffer.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/middleWares" 
	@${RM} ${OBJECTDIR}/middleWares/circular_buffer.p1.d 
	@${RM} ${OBJECTDIR}/middleWares/circular_buffer.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/middleWares/circular_buffer.p1 middleWares/circular_buffer.c 
	@-${MV} ${OBJECTDIR}/middleWares/circular_buffer.d ${OBJECTDIR}/middleWares/circular_buffer.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/middleWares/circular_buffer.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/middleWares/baud_detection.p1: middleWares/baud_detection.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/middleWares" 
	@${RM} ${OBJECTDIR}/middleWares/baud_detection.p1.d 
	@${RM} ${OBJECTDIR}/middleWares/baud_detection.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/middleWares/baud_detection.p1 middleWares/baud_detection.c 
	@-${MV} ${OBJECTDIR}/middleWares/baud_detection.d ${OBJECTDIR}/middleWares/baud_detection.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/middleWares/baud_detection.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/middlewares/reactor.p1: middlewares/reactor.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/middlewares" 
	@${RM} ${OBJECTDIR}/middlewares/reactor.p1.d 
	@${RM} ${OBJECTDIR}/middlewares/reactor.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/middlewares/reactor.p1 middlewares/reactor.c 
	@-${MV} ${OBJECTDIR}/middlewares/reactor.d ${OBJECTDIR}/middlewares/reactor.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/middlewares/reactor.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/middleWares/dma_api.p1: middleWares/dma_api.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/middleWares" 
	@${RM} ${OBJECTDIR}/middleWares/dma_api.p1.d 
	@${RM} ${OBJECTDIR}/middleWares/dma_api.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/middleWares/dma_api.p1 middleWares/dma_api.c 
	@-${MV} ${OBJECTDIR}/middleWares/dma_api.d ${OBJECTDIR}/middleWares/dma_api.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/middleWares/dma_api.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/middleWares/button_api.p1: middleWares/button_api.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/middleWares" 
	@${RM} ${OBJECTDIR}/middleWares/button_api.p1.d 
	@${RM} ${OBJECTDIR}/middleWares/button_api.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/middleWares/button_api.p1 middleWares/button_api.c 
	@-${MV} ${OBJECTDIR}/middleWares/button_api.d ${OBJECTDIR}/middleWares/button_api.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/middleWares/button_api.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto -DUART_SPEED=28800     -o ${OBJECTDIR}/main.p1 main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/VgaController.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/VgaController.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=pickit3  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/VgaController.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/VgaController.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/VgaController.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/VgaController.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -O2 -maddrqual=require -Dmaddrqual -xassembler-with-cpp -I"mcc_generated_files" -I"middlewares" -I"core" -I"core/interpreter" -I"core/video_terminal" -I"core/event_handlers" -I"isr" -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,+file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/VgaController.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
