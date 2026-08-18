#!/opt/cryo-load-leveler-epics-softioc/bin/linux-x86_64/cryoLeveler

< envPaths

epicsEnvSet("P", "SI-03SP:")
epicsEnvSet("R", "RF-CryoMod-")
epicsEnvSet("RF_R", "RF-SRFCav-")

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/cryoLeveler.dbd"
cryoLeveler_registerRecordDeviceDriver pdbbase

dbLoadRecords("$(TOP)/db/cll.db", "P=$(P), R=$(R), RF_R=$(RF_R), CRYO_MOD=1, SRF_CAV=A")
dbLoadRecords("$(TOP)/db/cll.db", "P=$(P), R=$(R), RF_R=$(RF_R), CRYO_MOD=2, SRF_CAV=B")

cd "${TOP}/iocBoot/${IOC}"
iocInit
