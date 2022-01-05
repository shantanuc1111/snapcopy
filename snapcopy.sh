#!/system/bin/sh
cp -v -p -n /data/data/com.snapchat.android/files/file_manager/chat_snap/*.{0,1,2} /storage/emulated/0/snapcopy/temp
cp -p -n /storage/emulated/0/snapcopy/temp/* /storage/emulated/0/snapcopy/
cd /storage/emulated/0/snapcopy/
for file in *.0; do mv "$file" "${file/.0/.jpg}"; done
for file in *.1; do mv "$file" "${file/.1/.mp4}"; done
for file in *.2; do mv "$file" "${file/.2/.png}"; done
