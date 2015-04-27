# patches needed to build a flashable ROM for xiaomi mione

* `MediaProvider.patch`    : optional
* `no_selinux.patch`       : mione doesn't support SeLinux yet
* `xiaomi_mione_wifi.patch`: needed to make wifi working on all mione

apply patches
-------------

Just run script `./apply`.
After patches applied, don't run this script again.


generate patches
----------------

run `repo diff -u project > output.patch` command.
_-u_ is required to inclued the project path
