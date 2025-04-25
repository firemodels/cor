@echo off
Title Building release cor for 64 bit Windows

call ..\Scripts\setup_intel_compilers.bat
call ..\Scripts\set_compilers.bat

make SHELL="%ComSpec%"  VPATH="../../Source" -f ..\makefile intel_win_64_db
