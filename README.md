# EPICS SoftIOC to auto adjust the cryo load.


This repository contains the EPICS Soft Input/Output Controller (IOC) used at
LNLS for leveling the cryomodule load till reach a desired total power value.

## Running the IOC

You can use the following command to run it in the background using the default
start-up script from
[epics-in-docker](https://github.com/cnpem/epics-in-docker).

```bash
TAG={latest} docker compose up -d
```

## Building the IOC image

This project uses [epics-in-docker](https://github.com/cnpem/epics-in-docker)
for building container images.
