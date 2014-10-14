
##############################################################################


#*
#******************************************************************************
#*
#*    Description:
#*        I2C module make file
#*
#******************************************************************************
TARGET := bcm589x-spi

ifeq ($(srctree),)
include $(LINUX_VOB)/makerules/linux_env.mk
include $(LINUX_VOB)/makerules/kernel_module_rules.mk

# Full directory path to source
MODFLAGS +=

all: $(MODULE)

install: install-mod

clean: clean-mod

else
EXTRA_CFLAGS += -Werror -mlong-calls

# Linux definitions used to generate the .ko file

obj-m := $(TARGET).o
$(TARGET)-objs := \
	pl022-spi.o

endif

