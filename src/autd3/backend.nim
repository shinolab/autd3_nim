# File: backend.nim
# Project: autd3
# Created Date: 13/06/2022
# Author: Shun Suzuki
# -----
# Last Modified: 13/06/2022
# Modified By: Shun Suzuki (suzuki@hapis.k.u-tokyo.ac.jp)
# -----
# Copyright (c) 2022 Shun Suzuki. All rights reserved.
#


import native_methods/autd3capi_gain_holo

type Backend* = object of RootObj
    p*: pointer

proc `=destroy`(b: var Backend) =
    if (b.p != nil):
        AUTDDeleteBackend(b.p)
        b.p = pointer(nil)
