# MH2p CarPlay Navigation Compass Ignore
Allows showing maps in instrument cluster when phone navigation is running.
## License
 - This file is part of MH2p_NaviCompassIgnore, licensed under CC BY-NC-SA 4.0.
 - https://creativecommons.org/licenses/by-nc-sa/4.0/
 - See the LICENSE file in the project root for full license text.
 - NOT FOR COMMERCIAL USE
## Installation
 - for use with [MH2p SD ModKit](https://github.com/LawPaul/MH2p_SD_ModKit)
## How it works
 - `NaviCompass.jar` is copied to MH2p at `/mnt/app/eso/hmi/lsd/jars`
 - jars in that directory are loaded onto the classpath before `lsd.jar` which runs the UI
 - classes in `NaviCompass.jar` are prioritized over those in `lsd.jar` and can modify functionality