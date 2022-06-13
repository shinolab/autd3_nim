# File: emulator.nim
# Project: src
# Created Date: 13/06/2022
# Author: Shun Suzuki
# -----
# Last Modified: 13/06/2022
# Modified By: Shun Suzuki (suzuki@hapis.k.u-tokyo.ac.jp)
# -----
# Copyright (c) 2022 Shun Suzuki. All rights reserved.
#


import autd3
import autd3/emulator
import tests/runner

when isMainModule:
    try:
        var cnt = initController()
        cnt.addDevice([0.0, 0.0, 0.0], [0.0, 0.0, 0.0])

        let link = initEmulator(50632, cnt)
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
