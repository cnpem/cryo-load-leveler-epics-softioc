#!/opt/cryo-load-leveler-epics-softioc/bin/linux-x86_64/cryoLeveler

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/cryo-load-leveler.dbd"
cryo_load_leveler_registerRecordDeviceDriver pdbbase

cd "${TOP}/iocBoot/${IOC}"
iocInit
