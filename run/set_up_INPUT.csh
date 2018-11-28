#!/bin/csh -fx
## User input
#The location of the AM4 INPUT directory
set am4_input = "/path/to/input/directory/INPUT"
# The folder containing ape_ozone_cfmip3_scaled
set aqua_input = "/path/to/folder/with/ape_ozone_cfmip3_scaled"
# The folder where the input.nml, diag_table, field_table, and data_table are
set aqua_tables = "/path/to/aquaplanet/nml/and/diag_table/field_table"
# The directory you want to run in (should match workDir in the run script)
set workDir = "$SCRATCH/$USER/test"
## END USER INPUT

set am4_files_list = "AM4INPUT.txt" 
set aqua_files_list =  "ape_ozone_cfmip3_scaled.nc"
set am4_input_files = `cat ${am4_files_list}`
#set aqua_input_files = `cat ${aqua_files_list}`

## Make the workDir
mkdir -p ${workDir}/INPUT
mkdir -p ${workDir}/RESTART


## Link in the AM4 INPUT files that are needed
foreach f (${am4_input_files})
     ln ${am4_input}/${f} ${workDir}/INPUT
end
## Copy the ape_ozone_cfmip3_scaled.nc
foreach f (${aqua_input_files})
     cp ${aqua_input}/${f} ${workDir}/INPUT
#     ln ${aqua_input}/${f} ${workDir}/INPUT
end
## Link in the addtional files from the AM4
set extra_am4 = " anthro_so2.1849_2016.nc C96_mosaic_tile1XC96_mosaic_tile1.nc C96_mosaic_tile2XC96_mosaic_tile2.nc C96_mosaic_tile3XC96_mosaic_tile3.nc C96_mosaic_tile4XC96_mosaic_tile4.nc C96_mosaic_tile5XC96_mosaic_tile5.nc C96_mosaic_tile6XC96_mosaic_tile6.nc"
foreach f (${extra_am4})
     ln ${am4_input}/${f} ${workDir}/INPUT
end
## Get the extra input files
set runFiles = "data_table  diag_table  field_table input.nml"
foreach f (${runFiles})
     cp ${aqua_tables}/${runFiles} ${workDir}
end
