#!../../bin/linux-x86_64/cryo-load-leveler

#- You may have to change cryo-load-leveler to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/cryo-load-leveler.dbd"
cryo_load_leveler_registerRecordDeviceDriver pdbbase

cd "${TOP}/iocBoot/${IOC}"
iocInit
