asvi - Andrew's SystemVerilog Interface Experiments
===================================================

WIP, not for general use.

This file is for writing material that would be useful to somebody approaching
the project without much/any previous knowledge.

It's a good habit to write a description of your project, and revisit the
description every month or so.


Repository Structure
--------------------
- Notes should be in `logbook.md`.
- Each testcase should have all SystemVerilog in a single file under
  `testcases/`, i.e. no sharing code between testcases.
- Each tool should be configured in it's own Makefile under `mk/*.mk`.
  All of those Makefiles can be included in the top level one.


Testcases
---------
Write descriptions of testcases here, please.
Having all descriptions beside each other should make it straightforward to
compare and plan them.

Features of SystemVerilog to test include:
- Connect via `force`, `assign`, `always_comb`, `always_ff`, `always_latch`.
- Connections to SVI ports (via modport), instances, and wires internal to the
  interface definition.
- Arrays of SVIs, arrays within SVIs, dimensions packed and unpacked.
- All of the above is a cross product of 5x3x3x3=135 testcases.
- Assertions, properties.

