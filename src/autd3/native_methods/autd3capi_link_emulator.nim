##  This file was automatically generated from header file

{.deadCodeElim: on.}
when defined(windows):
  const
    dll* = "bin/autd3capi-link-emulator.dll"
elif defined(macosx):
  const
    dll* = "bin/libautd3capi-link-emulator.dylib"
else:
  const
    dll* = "bin/libautd3capi-link-emulator.so"
proc AUTDLinkEmulator*(`out`: ptr pointer; port: uint16; cnt: pointer) {.cdecl,
    importc: "AUTDLinkEmulator", dynlib: dll.}