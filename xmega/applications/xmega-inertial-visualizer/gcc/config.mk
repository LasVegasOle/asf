#
# Copyright (c) 2010 Atmel Corporation. All rights reserved.
#
# \asf_license_start
#
# \page License
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.
#
# 3. The name of Atmel may not be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# 4. This software may only be redistributed and used in connection with an
#    Atmel microcontroller product.
#
# THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
# EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# \asf_license_stop
#

# Path to top level ASF directory relative to this project directory.
PRJ_PATH = ../../../..

# Microcontroller: atxmega128a1, atmega128, attiny261, etc.
MCU = atxmega256a3bu

# Application target name. Given with suffix .a for library and .elf for a
# standalone application.
TARGET = sensors_inertial_visualizer.elf

# C source files located from the top-level source directory
CSRCS = \
       common/applications/sensors/inertial_visualizer/data_visualizer.c \
       common/applications/sensors/inertial_visualizer/main.c \
       common/boards/sensors_xplained/sensors_xplained.c  \
       common/services/clock/xmega/sysclk.c               \
       common/services/ioport/xmega/ioport_compat.c       \
       common/services/sensors/drivers/akm/ak8975.c       \
       common/services/sensors/drivers/bosch/bma020.c     \
       common/services/sensors/drivers/bosch/bma150.c     \
       common/services/sensors/drivers/bosch/bma180.c     \
       common/services/sensors/drivers/bosch/bma220.c     \
       common/services/sensors/drivers/bosch/bma222.c     \
       common/services/sensors/drivers/bosch/bma250.c     \
       common/services/sensors/drivers/bosch/bma_axis.inc.c \
       common/services/sensors/drivers/bosch/bmp.c        \
       common/services/sensors/drivers/honeywell/hmc5883l.c \
       common/services/sensors/drivers/invensense/imu3000.c \
       common/services/sensors/drivers/invensense/itg3200.c \
       common/services/sensors/drivers/kionix/kxtf9.c     \
       common/services/sensors/drivers/osram/sfh5712.c    \
       common/services/sensors/drivers/osram/sfh7770.c    \
       common/services/sensors/physics/physics.c          \
       common/services/sensors/sensor.c                   \
       common/services/sensors/sensor_bus.c               \
       common/services/sensors/sensor_nvram.c             \
       common/services/sensors/sensor_platform.c          \
       common/services/sleepmgr/xmega/sleepmgr.c          \
       common/services/usb/class/cdc/device/udi_cdc.c     \
       common/services/usb/class/cdc/device/udi_cdc_desc.c \
       common/services/usb/udc/udc.c                      \
       common/utils/stdio/read.c                          \
       common/utils/stdio/stdio_usb/stdio_usb.c           \
       common/utils/stdio/write.c                         \
       xmega/boards/xmega_a3bu_xplained/init.c            \
       xmega/drivers/nvm/nvm.c                            \
       xmega/drivers/twi/twim.c                           \
       xmega/drivers/twi/twis.c                           \
       xmega/drivers/usb/usb_device.c

# Assembler source files located from the top-level source directory
ASSRCS = \
       xmega/drivers/cpu/ccp.s                            \
       xmega/drivers/nvm/nvm_asm.s

# Include path located from the top-level source directory
INC_PATH = \
       common/boards                                      \
       common/services/clock                              \
       common/services/delay                              \
       common/services/gpio                               \
       common/services/ioport                             \
       common/services/sensors                            \
       common/services/sensors/module_config              \
       common/services/sleepmgr                           \
       common/services/twi                                \
       common/services/usb                                \
       common/services/usb/class/cdc                      \
       common/services/usb/class/cdc/device               \
       common/services/usb/udc                            \
       common/utils                                       \
       common/utils/stdio/stdio_usb                       \
       xmega/applications/xmega-inertial-visualizer/conf  \
       xmega/boards                                       \
       xmega/boards/xmega_a3bu_xplained                   \
       xmega/drivers/cpu                                  \
       xmega/drivers/nvm                                  \
       xmega/drivers/sleep                                \
       xmega/drivers/twi                                  \
       xmega/drivers/usb                                  \
       xmega/utils                                        \
       xmega/utils/preprocessor \
       xmega/applications/xmega-inertial-visualizer/gcc  

# Library paths from the top-level source directory
LIB_PATH = 

# Libraries to link with the project
LIBS =  \
       m                                                 

# Additional options for debugging. By default the common Makefile.in will
# add -gdwarf-2.
DBGFLAGS = 

# Optimization settings
OPTIMIZATION = -Os

# Extra flags used when creating an EEPROM Intel HEX file. By default the
# common Makefile.in will add -j .eeprom
# --set-section-flags=.eeprom="alloc,load" --change-section-lma .eeprom=0.
EEPROMFLAGS = 

# Extra flags used when creating an Intel HEX file. By default the common
# Makefile.in will add -R .eeprom -R .usb_descriptor_table.
FLASHFLAGS = 

# Extra flags to use when archiving.
ARFLAGS = 

# Extra flags to use when assembling.
ASFLAGS = 

# Extra flags to use when compiling.
CFLAGS = 

# Extra flags to use when preprocessing.
#
# Preprocessor symbol definitions
#   To add a definition use the format "-D name[=definition]".
#   To cancel a definition use the format "-U name".
#
# The most relevant symbols to define for the preprocessor are:
#   BOARD      Target board in use, see boards/board.h for a list.
#   EXT_BOARD  Optional extension board in use, see boards/board.h for a list.
CPPFLAGS = \
       -D BOARD=XMEGA_A3BU_XPLAINED                       \
       -D CONFIG_NVM_IGNORE_XMEGA_A3_D3_REVB_ERRATA       \
       -D CONF_STDIO_REDIRECT                             \
       -D EXT_BOARD=SENSORS_XPLAINED_INERTIAL_1           \
       -D IOPORT_XMEGA_COMPAT

# Extra flags to use when linking
LDFLAGS =  \
       -Wl,--section-start=.BOOT=0x40000                  \
       -Wl,-u,vfprintf -lprintf_flt                      

# Pre- and post-build commands
PREBUILD_CMD = 
POSTBUILD_CMD = 