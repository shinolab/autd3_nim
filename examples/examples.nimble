# Package

version       = "2.2.1"
author        = "shun suzuki"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
bin           = @["soem", "emulator"]

# Dependencies

requires "nim >= 1.6.6"
requires "https://github.com/shinolab/autd3_nim.git == 2.2.1"
