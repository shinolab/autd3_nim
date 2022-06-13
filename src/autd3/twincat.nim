# File: emulator.nim
# Project: autd3
# Created Date: 13/06/2022
# Author: Shun Suzuki
# -----
# Last Modified: 13/06/2022
# Modified By: Shun Suzuki (suzuki@hapis.k.u-tokyo.ac.jp)
# -----
# Copyright (c) 2022 Shun Suzuki. All rights reserved.
#


import native_methods/autd3capi_link_twincat
import link

type TwinCAT* = object of Link

proc initTwinCAT*(): TwinCAT =
  AUTDLinkTwinCAT(result.p.addr)
