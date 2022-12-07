--
-- libtiff-tools 4.2.0 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Other"
-- "Description: libtiff is a library providing support for the Tag Image File Format (TIFF), a widely used format for storing image data. This package includes tools for converting TIFF images to and from other formats and tools for doing simple manipulations of TIFF images."
-- "Keywords: singularity utilities"

whatis("Name: libtiff-tools")
whatis("Version: 4.2.0")
whatis("Category: Other")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: libtiff is a library providing support for the Tag Image File Format (TIFF), a widely used format for storing image data. This package includes tools for converting TIFF images to and from other formats and tools for doing simple manipulations of TIFF images.")

help([[
libtiff is a library providing support for the Tag Image File Format (TIFF), a widely used format for storing image data. This package includes tools for converting TIFF images to and from other formats and tools for doing simple manipulations of TIFF images.

To load the module type

> module load libtiff-tools/4.2.0

To unload the module type

> module unload libtiff-tools/4.2.0

Tools included in this module are

* tiff2bw
* tiff2pdf
* tiff2ps
* tiff2rgba
* tiffcmp
* tiffcp
* tiffcrop
* tiffdither
* tiffdump
* tiffinfo
* tiffmedian
* tiffset
* tiffsplit
]])

local package = "libtiff-tools"
local version = "4.2.0"
local base    = pathJoin("/bil/packages",package,version)
prepend_path("PATH", base)
