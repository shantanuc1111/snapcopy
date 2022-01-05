#!/system/bin/sh
echo Copying Files
cp -p -n /data/data/com.snapchat.android/files/file_manager/chat_snap/*.{0,1,2} /storage/emulated/0/snapcopy/temp
cp -p -n "${0%/*}/temp/" "${0%/*}"
cd "${0%/*}"
echo Deleting Useless files
find . -type 'f' -size -100c -delete
echo Renaming files
for f in *.0; do 
ext=$(file --extension -N "$f")
if [ ${ext:(-3)} == "fif" ]
then 
    mv "$f" "${f/.0/.jpg}"
else 
    mv "$f" "${f/.0/.mp4}"
fi
done
for file in *.1; do mv "$file" "${file/.1/.mp4}"; done
for file in *.2; do mv "$file" "${file/.2/.png}"; done
