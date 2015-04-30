# patches needed to build a flashable ROM for xiaomi mione

* `audio-caf-build-error.patch`: fix a build error in hardware/qcom/audio-caf/
* `MediaProvider.patch`    : optional
* `xiaomi_mione_wifi.patch`: needed to make wifi working on all mione

apply patches
-------------

Just run script `./apply`.
After patches applied, don't run this script again.


generate patches
----------------

run `repo diff -u project > output.patch` command.
_-u_ is required to inclued the project path
