#!/bin/bash

echo 0 > ./temp_file_for_extensionfixer.txt

function rename_file() {
	local extension=$(exiftool -FileTypeExtension -s3 -m $0)

	if [ "$extension" = "3fr" ] || [ "$extension" = "3g2" ] || [ "$extension" = "3gp" ] || [ "$extension" = "7z" ] || 
	[ "$extension" = "a" ] || [ "$extension" = "aa" ] || [ "$extension" = "aax" ] || [ "$extension" = "ac3" ] || 
	[ "$extension" = "acr" ] || [ "$extension" = "aet" ] || [ "$extension" = "afm" ] || [ "$extension" = "ai" ] || 
	[ "$extension" = "aiff" ] || [ "$extension" = "aif" ] || [ "$extension" = "aifc" ] || [ "$extension" = "alaw" ] || 
	[ "$extension" = "alias" ] || [ "$extension" = "ape" ] || [ "$extension" = "arq" ] || [ "$extension" = "arw" ] || 
	[ "$extension" = "asf" ] || [ "$extension" = "avi" ] || [ "$extension" = "avif" ] || [ "$extension" = "azw" ] || 
	[ "$extension" = "azw3" ] || [ "$extension" = "b16" ] || [ "$extension" = "bmf" ] || [ "$extension" = "bmp" ] || 
	[ "$extension" = "bpg" ] || [ "$extension" = "btf" ] || [ "$extension" = "c2pa" ] || [ "$extension" = "cap" ] || 
	[ "$extension" = "cbz" ] || [ "$extension" = "cgroup" ] || [ "$extension" = "cpi" ] || [ "$extension" = "cr2" ] || 
	[ "$extension" = "cr3" ] || [ "$extension" = "crm" ] || [ "$extension" = "crw" ] || [ "$extension" = "cs1" ] || 
	[ "$extension" = "csv" ] || [ "$extension" = "cur" ] || [ "$extension" = "dcm" ] || [ "$extension" = "dcp" ] || 
	[ "$extension" = "dcr" ] || [ "$extension" = "dfont" ] || [ "$extension" = "divx" ] || [ "$extension" = "djvu" ] || 
	[ "$extension" = "dll" ] || [ "$extension" = "dng" ] || [ "$extension" = "doc" ] || [ "$extension" = "docx" ] || 
	[ "$extension" = "dpx" ] || [ "$extension" = "dr4" ] || [ "$extension" = "ds2" ] || [ "$extension" = "dv" ] || 
	[ "$extension" = "dvb" ] || [ "$extension" = "dvr-ms" ] || [ "$extension" = "eip" ] || [ "$extension" = "eps" ] || 
	[ "$extension" = "epub" ] || [ "$extension" = "erf" ] || [ "$extension" = "exe" ] || [ "$extension" = "exif" ] || 
	[ "$extension" = "exr" ] || [ "$extension" = "exv" ] || [ "$extension" = "f4a" ] || [ "$extension" = "f4b" ] || 
	[ "$extension" = "f4p" ] || [ "$extension" = "f4v" ] || [ "$extension" = "fff" ] || [ "$extension" = "fits" ] || 
	[ "$extension" = "flac" ] || [ "$extension" = "flif" ] || [ "$extension" = "flv" ] || [ "$extension" = "fpf" ] || 
	[ "$extension" = "gif" ] || [ "$extension" = "gpr" ] || [ "$extension" = "gz" ] || [ "$extension" = "gzip" ] || 
	[ "$extension" = "hdp" ] || [ "$extension" = "hdr" ] || [ "$extension" = "heic" ] || [ "$extension" = "heif" ] || 
	[ "$extension" = "hif" ] || [ "$extension" = "htm" ] || [ "$extension" = "html" ] || [ "$extension" = "icc" ] || 
	[ "$extension" = "icns" ] || [ "$extension" = "ico" ] || [ "$extension" = "idml" ] || [ "$extension" = "iiq" ] || 
	[ "$extension" = "ind" ] || [ "$extension" = "indd" ] || [ "$extension" = "indt" ] || [ "$extension" = "info" ] || 
	[ "$extension" = "insv" ] || [ "$extension" = "inx" ] || [ "$extension" = "iso" ] || [ "$extension" = "itc" ] || 
	[ "$extension" = "j2c" ] || [ "$extension" = "j2k" ] || [ "$extension" = "jif" ] || [ "$extension" = "jp2" ] || 
	[ "$extension" = "jpe" ] || [ "$extension" = "jpeg" ] || [ "$extension" = "jpf" ] || [ "$extension" = "jpg" ] || 
	[ "$extension" = "jpm" ] || [ "$extension" = "jpx" ] || [ "$extension" = "json" ] || [ "$extension" = "jxr" ] || 
	[ "$extension" = "k25" ] || [ "$extension" = "kdc" ] || [ "$extension" = "key" ] || [ "$extension" = "kth" ] || 
	[ "$extension" = "la" ] || [ "$extension" = "lfp" ] || [ "$extension" = "lif" ] || [ "$extension" = "lnk" ] || 
	[ "$extension" = "lrv" ] || [ "$extension" = "m2t" ] || [ "$extension" = "m2ts" ] || [ "$extension" = "m2v" ] || 
	[ "$extension" = "m4a" ] || [ "$extension" = "m4b" ] || [ "$extension" = "m4p" ] || [ "$extension" = "m4v" ] || 
	[ "$extension" = "mac" ] || [ "$extension" = "max" ] || [ "$extension" = "mef" ] || [ "$extension" = "mie" ] || 
	[ "$extension" = "mif" ] || [ "$extension" = "miff" ] || [ "$extension" = "mka" ] || [ "$extension" = "mks" ] || 
	[ "$extension" = "mkv" ] || [ "$extension" = "mlv" ] || [ "$extension" = "mng" ] || [ "$extension" = "mob" ] || 
	[ "$extension" = "mobi" ] || [ "$extension" = "modd" ] || [ "$extension" = "moi" ] || [ "$extension" = "mos" ] || 
	[ "$extension" = "mov" ] || [ "$extension" = "mp3" ] || [ "$extension" = "mp4" ] || [ "$extension" = "mpc" ] || 
	[ "$extension" = "mpeg" ] || [ "$extension" = "mpg" ] || [ "$extension" = "mpo" ] || [ "$extension" = "mqv" ] || 
	[ "$extension" = "mrw" ] || [ "$extension" = "mts" ] || [ "$extension" = "mxf" ] || [ "$extension" = "nef" ] || 
	[ "$extension" = "nka" ] || [ "$extension" = "nksc" ] || [ "$extension" = "nrw" ] || [ "$extension" = "nsv" ] || 
	[ "$extension" = "o" ] || [ "$extension" = "ogg" ] || [ "$extension" = "ogv" ] || [ "$extension" = "onp" ] || 
	[ "$extension" = "opus" ] || [ "$extension" = "orf" ] || [ "$extension" = "otf" ] || [ "$extension" = "pac" ] || 
	[ "$extension" = "pbm" ] || [ "$extension" = "pcd" ] || [ "$extension" = "pct" ] || [ "$extension" = "pcx" ] || 
	[ "$extension" = "pdf" ] || [ "$extension" = "pef" ] || [ "$extension" = "pfa" ] || [ "$extension" = "pfb" ] || 
	[ "$extension" = "pfm" ] || [ "$extension" = "pgm" ] || [ "$extension" = "pict" ] || [ "$extension" = "pip" ] || 
	[ "$extension" = "pls" ] || [ "$extension" = "png" ] || [ "$extension" = "pot" ] || [ "$extension" = "potm" ] || 
	[ "$extension" = "potx" ] || [ "$extension" = "ppm" ] || [ "$extension" = "pps" ] || [ "$extension" = "ppsm" ] || 
	[ "$extension" = "ppsx" ] || [ "$extension" = "ppt" ] || [ "$extension" = "pptm" ] || [ "$extension" = "pptx" ] || 
	[ "$extension" = "prc" ] || [ "$extension" = "ps" ] || [ "$extension" = "psb" ] || [ "$extension" = "psd" ] || 
	[ "$extension" = "psp" ] || [ "$extension" = "pst" ] || [ "$extension" = "qif" ] || [ "$extension" = "qt" ] || 
	[ "$extension" = "qti" ] || [ "$extension" = "qtif" ] || [ "$extension" = "r3d" ] || [ "$extension" = "ra" ] || 
	[ "$extension" = "raf" ] || [ "$extension" = "ram" ] || [ "$extension" = "rar" ] || [ "$extension" = "raw" ] || 
	[ "$extension" = "rcd" ] || [ "$extension" = "riff" ] || [ "$extension" = "rif" ] || [ "$extension" = "rm" ] || 
	[ "$extension" = "rmvb" ] || [ "$extension" = "rp" ] || [ "$extension" = "rsrc" ] || [ "$extension" = "rtf" ] || 
	[ "$extension" = "rw2" ] || [ "$extension" = "rwl" ] || [ "$extension" = "rwz" ] || [ "$extension" = "s7z" ] || 
	[ "$extension" = "seq" ] || [ "$extension" = "sid" ] || [ "$extension" = "srf" ] || [ "$extension" = "sr2" ] || 
	[ "$extension" = "srw" ] || [ "$extension" = "stl" ] || [ "$extension" = "svg" ] || [ "$extension" = "swf" ] || 
	[ "$extension" = "thm" ] || [ "$extension" = "thmx" ] || [ "$extension" = "tif" ] || [ "$extension" = "tiff" ] || 
	[ "$extension" = "torrent" ] || [ "$extension" = "ts" ] || [ "$extension" = "ttc" ] || [ "$extension" = "ttf" ] || 
	[ "$extension" = "txt" ] || [ "$extension" = "vcf" ] || [ "$extension" = "vob" ] || [ "$extension" = "vrd" ] || 
	[ "$extension" = "vsd" ] || [ "$extension" = "wav" ] || [ "$extension" = "wbp" ] || [ "$extension" = "wbmp" ] || 
	[ "$extension" = "wdp" ] || [ "$extension" = "webm" ] || [ "$extension" = "webp" ] || [ "$extension" = "wma" ] || 
	[ "$extension" = "wmf" ] || [ "$extension" = "wmv" ] || [ "$extension" = "wpg" ] || [ "$extension" = "wps" ] || 
	[ "$extension" = "wtv" ] || [ "$extension" = "wv" ] || [ "$extension" = "x3f" ] || [ "$extension" = "xcf" ] || 
	[ "$extension" = "xhtml" ] || [ "$extension" = "xisf" ] || [ "$extension" = "xls" ] || [ "$extension" = "xlsx" ] || 
	[ "$extension" = "xmp" ] || [ "$extension" = "zip" ]; then

		local file_name=$(exiftool -BaseName -s3 -m $0)
		local dir_path=$(dirname "$0")
		if [ "$dir_path/$file_name.$extension" != "$0" ]; then
			mv $0 "$dir_path/$file_name.$extension"
			local curr_count=$(cat ./temp_file_for_extensionfixer.txt)
			echo $((curr_count+1)) > ./temp_file_for_extensionfixer.txt
		fi
	fi
}

export -f rename_file
find "$1" -name "*" -type f -exec bash -c "rename_file" {} \;

count=$(cat ./temp_file_for_extensionfixer.txt)
echo "Successfully renamed $count files."

rm -f ./temp_file_for_extensionfixer.txt # clean up
