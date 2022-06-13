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


import native_methods/autd3capi_link_remote_twincat
import link

type RemoteTwinCAT* = object of Link

proc initRemoteTwinCAT*(remoteIP: string, remoteAmsNetId: string,
    localAmsNetId: string): RemoteTwinCAT =
  AUTDLinkRemoteTwinCAT(result.p.addr, remoteIP, remoteAmsNetId, localAmsNetId)
