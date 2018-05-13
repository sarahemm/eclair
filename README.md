ECLair is a microcoded CPU built with the ECL logic family. The system uses an 8-bit data bus, 16-bit general purpose registers (each of which can also be addressed as two 8-bit registers), a 24-bit physical address bus, and 16-bit virtual addresses.

The microcode is loaded from EPROM to control store RAM at system startup for performance reasons, and will also support writing to microcode to extend the CPU with new or reworked instructions at runtime.

This repository holds all code for the simulators and utilities, as well as the system design files.