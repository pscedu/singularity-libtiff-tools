#!/bin/bash

TOOLS=(tiff2bw
tiff2pdf
tiff2ps
tiff2rgba
tiffcmp
tiffcp
tiffcrop
tiffdither
tiffdump
tiffinfo
tiffmedian
tiffset
tiffsplit)

cat << EOF > template
#!/bin/bash

VERSION=4.2.0
PACKAGE=libtiff-tools
TOOL=TOOL_NAME
DIRECTORY=\$(dirname \$0)

STORAGES=(/ocean /bil /hive /local)

OPTIONS=""
for STORAGE in "\${STORAGES[@]}"
do
	if [ -d "\$STORAGE" ]; then
		OPTIONS=\$OPTIONS" -B \$STORAGE"
	fi
done

singularity exec \$OPTIONS \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif \$TOOL "\$@"
EOF

mkdir temp
for TOOL in "${TOOLS[@]}"
do
	echo "* "$TOOL
        cp template $TOOL
	sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
	chmod +x $TOOL
        cp $TOOL temp/
        git add $TOOL
done

if [ -f template ]; then
	rm -f template
fi

if [ -d temp ]; then
	rm -rf temp
fi
