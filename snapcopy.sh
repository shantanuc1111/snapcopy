#!/system/bin/sh
echo "DO NOT EXIT BEFORE Done MESSAGE IS DISPLAYED"
echo Copying Files
cp -p -n /data/data/com.snapchat.android/files/file_manager/chat_snap/*.{0,1,2} "${0%/*}/temp/"
cp -p -n -r "${0%/*}/temp/." "${0%/*}"
cd "${0%/*}"
echo Deleting Useless files
find . -type 'f' -size -100c -delete &> /dev/null
echo Renaming files
for f in *.0; do 
ext=$(file -b "$f")
if [ "${ext:0:4}" == "JPEG" ]
then 
    mv "$f" "${f/.0/.jpg}"
elif [ "${ext:0:4}" == "PNG " ]
then 
     mv "$f" "${f/.0/.png}"
else 
    mv "$f" "${f/.0/.mp4}"
fi
done
echo Merging files
for f in *.2; do 
input="${f%?}"
/data/data/com.termux/files/usr/bin/ffmpeg -y -i "${input}1" -i "${input}2" -filter_complex "[1:v][0:v]scale2ref=iw:ih[ovr][base];[base][ovr]overlay[v]" -map [v] -map 0:a? -ac 2 "${input}mp4" 
done 
for file in *.1; do mv "$file" "${file/.1/.mp4}"; done
echo Done
