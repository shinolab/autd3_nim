# File: soem.nim
# Project: src
# Created Date: 11/06/2022
# Author: Shun Suzuki
# -----
# Last Modified: 13/06/2022
# Modified By: Shun Suzuki (suzuki@hapis.k.u-tokyo.ac.jp)
# -----
# Copyright (c) 2022 Shun Suzuki. All rights reserved.
#

import strformat
import strutils

import autd3
import autd3/soem

import tests/runner

proc onLost(msg: cstring) =
    echo msg
    quit(-1)

proc getInterface(): string =
    try:
        let adapters = SOEM.enumerateAdapters
        for i, adater in adapters:
            echo fmt"[{i}]: {adater.desc}, {adater.name}"

        stdout.write "Choose adapter: "
        let i = stdin.readLine.parseInt
        adapters[i].name
    except:
        ""

when isMainModule:
    try:
        var cnt = initController()
        cnt.addDevice([0.0, 0.0, 0.0], [0.0, 0.0, 0.0])

        let ifname = getInterface()
        let link = initSOEM(ifname, cnt.deviceNum(), 1, onLost, true)
        if not cnt.open(link):
            echo Controller.lastError
            quit(-1)

        cnt.checkAck = true

        run(cnt)

    except:
        let
            e = getCurrentException()
            msg = getCurrentExceptionMsg()
        echo "Got exception ", repr(e), " with message ", msg
