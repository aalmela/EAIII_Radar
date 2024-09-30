.stream defpath  1 "." "/home/karlk/ads10.daily/cellular_pamp/verification/rules/pc5/drc" "$HPEESOF_DIR/drc/tools" ;
.stream inc bjade.cmd   !! defines 'bjade' macro

.macref bjade 		!! macro name
          pamp  	!! design name
          jh_pc5  	!! rules
          drc_result  	!! run -- used as directory name
          "readprefix '$HOME'"
          norootcell
          "autowindow"
          "real 32000000"
          ;
exit
