##  This file was automatically generated from header file

{.deadCodeElim: on.}
when defined(windows):
  const
    dll* = "bin/autd3capi-link-soem.dll"
elif defined(macosx):
  const
    dll* = "bin/libautd3capi-link-soem.dylib"
else:
  const
    dll* = "bin/libautd3capi-link-soem.so"
proc AUTDGetAdapterPointer*(`out`: ptr pointer): int32 {.cdecl,
    importc: "AUTDGetAdapterPointer", dynlib: dll.}
proc AUTDGetAdapter*(p_adapter: pointer; index: int32; desc: cstring; name: cstring) {.
    cdecl, importc: "AUTDGetAdapter", dynlib: dll.}
proc AUTDFreeAdapterPointer*(p_adapter: pointer) {.cdecl,
    importc: "AUTDFreeAdapterPointer", dynlib: dll.}
proc AUTDLinkSOEM*(`out`: ptr pointer; ifname: cstring; device_num: int32;
                  cycle_ticks: uint16; on_lost: pointer; high_precision: bool) {.
    cdecl, importc: "AUTDLinkSOEM", dynlib: dll.}