# SnapCopy
Copies unopened Snaps to your internal storage and renames them 

*Requires a Rooted Device*
*Requires FFMPEG to be installed using Termux (download it from PlayStore)*
*Requires File to be installed*

Just run the script with any script runner in elevated privileges.

__Points to be noted__

1. A folder named "temp" should be in the root folder.

2. Due to some Snapchat thingy, old snaps may sometime get copied as snapchat downloads them again (IDK why, yet)

3. Run the script before you open the snaps, otherwise the Snaps may be deleted 

~~4. Some video snaps may be incorrectly renamed as a image file, This is a known bug and I havent found a way to differentiate between the two (To fix this, you can edit the script to rename the file as .mkv/.webm instead of .jpg, this will create a 10 sec video for every image)~~ Issue Fixed

~~6. Video Snaps with stickers wil come as seperate files, impelementation of ffmpeg to merge them is in progress~~ Issue Fixed


Currently optimising the script
