# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "Y:\\C++\\Uni-CPU\\HardwareExport\\ZYNQ-Board\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\sleep.h"
  "Y:\\C++\\Uni-CPU\\HardwareExport\\ZYNQ-Board\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\xiltimer.h"
  "Y:\\C++\\Uni-CPU\\HardwareExport\\ZYNQ-Board\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\include\\xtimer_config.h"
  "Y:\\C++\\Uni-CPU\\HardwareExport\\ZYNQ-Board\\ps7_cortexa9_0\\standalone_ps7_cortexa9_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
