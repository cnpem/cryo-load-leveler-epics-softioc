TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = cryoLeveler
# cryoLeveler.dbd will be created and installed
DBD += cryoLeveler.dbd

# cryoLeveler.dbd will be made up from these files:
cryoLeveler_DBD += base.dbd

# Include dbd files from all support applications:
#cryoLeveler_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#cryoLeveler_LIBS += xxx

# cryoLeveler_registerRecordDeviceDriver.cpp derives from cryoLeveler.dbd
cryoLeveler_SRCS += cryoLeveler_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
cryoLeveler_SRCS_DEFAULT += cryoLevelerMain.cpp
cryoLeveler_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#cryoLeveler_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
cryoLeveler_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

