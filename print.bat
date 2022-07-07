@echo off
masm %1.asm;
link %1.obj;
rem debug %1.exe