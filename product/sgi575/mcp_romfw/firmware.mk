#
# Arm SCP/MCP Software
# Copyright (c) 2018-2019, Arm Limited and Contributors. All rights reserved.
#
# SPDX-License-Identifier: BSD-3-Clause
#
# The order of the modules in the BS_FIRMWARE_MODULES list is the order in which
# the modules are initialized, bound, started during the pre-runtime phase.
#

BS_FIRMWARE_CPU := cortex-m7
BS_FIRMWARE_HAS_MULTITHREADING := no
BS_FIRMWARE_HAS_NOTIFICATION := yes
BS_FIRMWARE_MODULE_HEADERS_ONLY := \
    power_domain

BS_FIRMWARE_MODULES := \
    pl011 \
    log \
    clock \
    sgi575_rom

BS_FIRMWARE_SOURCES := \
    config_log.c \
    config_clock.c \
    config_sgi575_rom.c

include $(BS_DIR)/firmware.mk
