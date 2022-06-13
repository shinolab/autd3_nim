##  This file was automatically generated from header file

{.deadCodeElim: on.}
when defined(windows):
  const
    dll* = "bin/autd3capi-gain-holo.dll"
elif defined(macosx):
  const
    dll* = "bin/libautd3capi-gain-holo.dylib"
else:
  const
    dll* = "bin/libautd3capi-gain-holo.so"
proc AUTDEigenBackend*(`out`: ptr pointer) {.cdecl, importc: "AUTDEigenBackend",
    dynlib: dll.}
proc AUTDDeleteBackend*(backend: pointer) {.cdecl, importc: "AUTDDeleteBackend",
    dynlib: dll.}
proc AUTDGainHoloSDP*(gain: ptr pointer; backend: pointer; alpha: float64;
                     lambda: float64; repeat: uint64) {.cdecl,
    importc: "AUTDGainHoloSDP", dynlib: dll.}
proc AUTDGainHoloEVD*(gain: ptr pointer; backend: pointer; gamma: float64) {.cdecl,
    importc: "AUTDGainHoloEVD", dynlib: dll.}
proc AUTDGainHoloNaive*(gain: ptr pointer; backend: pointer) {.cdecl,
    importc: "AUTDGainHoloNaive", dynlib: dll.}
proc AUTDGainHoloGS*(gain: ptr pointer; backend: pointer; repeat: uint64) {.cdecl,
    importc: "AUTDGainHoloGS", dynlib: dll.}
proc AUTDGainHoloGSPAT*(gain: ptr pointer; backend: pointer; repeat: uint64) {.cdecl,
    importc: "AUTDGainHoloGSPAT", dynlib: dll.}
proc AUTDGainHoloLM*(gain: ptr pointer; backend: pointer; eps_1: float64;
                    eps_2: float64; tau: float64; k_max: uint64; initial: ptr float64;
                    initial_size: int32) {.cdecl, importc: "AUTDGainHoloLM",
    dynlib: dll.}
proc AUTDGainHoloGaussNewton*(gain: ptr pointer; backend: pointer; eps_1: float64;
                             eps_2: float64; k_max: uint64; initial: ptr float64;
                             initial_size: int32) {.cdecl,
    importc: "AUTDGainHoloGaussNewton", dynlib: dll.}
proc AUTDGainHoloGradientDescent*(gain: ptr pointer; backend: pointer; eps: float64;
                                 step: float64; k_max: uint64; initial: ptr float64;
                                 initial_size: int32) {.cdecl,
    importc: "AUTDGainHoloGradientDescent", dynlib: dll.}
proc AUTDGainHoloGreedy*(gain: ptr pointer; backend: pointer; phase_div: int32) {.cdecl,
    importc: "AUTDGainHoloGreedy", dynlib: dll.}
proc AUTDGainHoloAdd*(gain: pointer; x: float64; y: float64; z: float64; amp: float64) {.
    cdecl, importc: "AUTDGainHoloAdd", dynlib: dll.}
proc AUTDSetConstraint*(gain: pointer; `type`: int32; param: pointer) {.cdecl,
    importc: "AUTDSetConstraint", dynlib: dll.}
proc AUTDSetModeHolo*(mode: uint8) {.cdecl, importc: "AUTDSetModeHolo", dynlib: dll.}