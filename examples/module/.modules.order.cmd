cmd_/workdir/module/modules.order := {   echo /workdir/module/module_hello.ko; :; } | awk '!x[$$0]++' - > /workdir/module/modules.order
