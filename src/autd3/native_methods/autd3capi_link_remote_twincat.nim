##  This file was automatically generated from header file

{.deadCodeElim: on.}
when defined(windows):
  const
    dll* = "bin/autd3capi-link-remote-twincat.dll"
elif defined(macosx):
  const
    dll* = "bin/libautd3capi-link-remote-twincat.dylib"
else:
  const
    dll* = "bin/libautd3capi-link-remote-twincat.so"
proc AUTDLinkRemoteTwinCAT*(`out`: ptr pointer; remote_ip_addr: cstring;
                           remote_ams_net_id: cstring; local_ams_net_id: cstring) {.
    cdecl, importc: "AUTDLinkRemoteTwinCAT", dynlib: dll.}