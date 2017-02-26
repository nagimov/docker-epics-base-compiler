# EPICS base compiler

This docker image aims to simplify the compilation of EPICS Base from sources.

Refer to the [build script](./build.sh) in order to extract necessary files from docker container after compilation.

In the provided example, `libca.so` and `libCom.so` libraries are extracted using `docker cp` command.

# About

EPICS (Experimental Physics and Industrial Control System)  is a set of Open Source software tools, libraries and applications developed collaboratively and used worldwide to create distributed soft real-time control systems for scientific instruments such as a particle accelerators, telescopes and other large scientific experiments. See more at http://www.aps.anl.gov/epics

EPICS Base is the main core of EPICS, comprising the build system and tools, common and OS-interface libraries, Channel Access client and server libraries, static and run-time database access routines, the database processing code, and standard record, device and driver support. See more at http://www.aps.anl.gov/epics/base

