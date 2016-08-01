# This script converts all H5 files in a given
# directory to TIFF 16-bit multiPage clipped images
#
# Author : Thomas Pengo, 2016

# Let used decide input and output directories
set inDir [tk_chooseDirectory]
set outDir [tk_chooseDirectory]

# List all files
set files [glob "$inDir"]

# Loop through all files
foreach f $files {
  # Open the image
	set im [img open $f]
	
	# Save it
	$im save [file join $outDir "$im.tiff"] -type tiff16 -tiffMultiDir -cmode clip
	
	# Close it
	$im del
}

