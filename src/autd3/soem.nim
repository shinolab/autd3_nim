# File: autd3.nim
# Project: src
# Created Date: 11/06/2022
# Author: Shun Suzuki
# -----
# Last Modified: 13/06/2022
# Modified By: Shun Suzuki (suzuki@hapis.k.u-tokyo.ac.jp)
# -----
# Copyright (c) 2022 Shun Suzuki. All rights reserved.
#


import strutils

import native_methods/autd3capi_link_soem
import link

type SOEM* = object of Link

type Callback = proc(a: string)

type Adapter* = object
  name*: string
  desc*: string

func initAdapter(name: string, desc: string): Adapter =
  result.name = name
  result.desc = desc

proc enumerateAdapters*(_: typedesc[SOEM]): seq[Adapter] =
  var p = pointer(nil)
  let n = AUTDGetAdapterPointer(p.addr)
  var adapters: seq[Adapter] = @[]
  for i in 0..<n:
    var desc = cast[cstring]('\0'.repeat(128))
    var name = cast[cstring]('\0'.repeat(128))
    AUTDGetAdapter(p, i, desc, name)
    adapters.add(initAdapter($name, $desc))
  AUTDFreeAdapterPointer(p)
  adapters

proc initSOEM*(ifname: string, deviceNum: int32, cycleTicks: uint16,
    onLost: Callback, highPrecision: bool): SOEM =
  AUTDLinkSOEM(result.p.addr, ifname, deviceNum, cycleTicks,
      onLost.unsafeAddr, highPrecision)
