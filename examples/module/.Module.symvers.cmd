cmd_/workdir/module/Module.symvers := sed 's/\.ko$$/\.o/' /workdir/module/modules.order | scripts/mod/modpost -m -a  -o /workdir/module/Module.symvers -e -i Module.symvers   -T -
