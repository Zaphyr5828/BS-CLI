#!/bin/bash
#This checks if ffmpeg is installed and if it isnt then it installs it
if [ "$(dpkg-query -W -f='${Status}' ffmpeg 2>/dev/null | grep -c "ok installed")" -eq 0 ]; then
  echo "FFmpeg not installed, installing..."
  sudo apt-get install -y ffmpeg >/dev/null 2>&1
fi
clear
echo ' _____________________________________________________________________'
echo '"                              _   _                          _       "'
echo '"                             | | | |                        | |      "'
echo '"    ___ _ __ ___   ___   ___ | |_| |__      _ __   __ _  ___| | __   "'
echo '"   / __| |_  __ \ / _ \ / _ \| __| |_ \    |  _ \ / _` |/ __| |/ /   "'
echo '"   \__ \ | | | | | (_) | (_) | |_| | | |   | |_) | (_| | (__|   <    "'
echo '"   |___/_| |_| |_|\___/ \___/ \__|_| |_|   | .__/ \__,_|\___|_|\_\   "'
echo '"                                           | |                       "'
echo '"                                           |_|                       "'
echo '"_____________________________________________________________________"'
echo ""
echo "Welcome to the Buttery Smooth CLI!"
echo ""
sleep 1
PS3='Please choose an option:'
options=("Resampling" "Upscaling" "Cut Video" "Reducing File Size" "Quit")
select opt in "${options[@]}"; do
  case $opt in
  "Resampling")
    #Start of resampling code
    weighting=1
    clear
    echo ' ___________________________________________________________'
    echo '"                                                           "'
    echo '"                                        _ _                "'
    echo '"                                       | (_)               "'
    echo '"    _ __ ___  ___  __ _ _ __ ___  _ __ | |_ _ __   __ _    "'
    echo '"   | |__/ _ \/ __|/ _  | |_   _ \| |_ \| | | |_ \ / _| |   "'
    echo '"   | | |  __/\__ \ (_| | | | | | | |_) | | | | | | (_| |   "'
    echo '"   |_|  \___||___/\__,_|_| |_| |_| .__/|_|_|_| |_|\__, |   "'
    echo '"                               | |                 __/ |   "'
    echo '"                               |_|                |___/    "'
    echo '"                                                           "'
    echo '"___________________________________________________________"'
    echo ""
    echo ""
    echo "This is the first version of FFmpeg BS-CLI for linux"
    echo "Created by Arden#0001 on discord"
    echo ""
    echo ""
    echo "Here you can resample your input video to 60fps using ffmpeg's tmix filter."
    echo "Please make sure your input.mp4 file is in the same folder as ffmpeg.exe and this menu"
    echo ""
    echo ""
    echo ""
    echo "Note: If your output is black screen, it means windows player"
    echo "      cannot handle high quality like this (low -crf value, like 0)"
    echo ""
    echo "Enter FPS of your video input (for example 960) and press enter"
    read -r fpsAmount
    framesAmount=$(echo "$fpsAmount / 60" | bc)
    echo ""
    echo ""
    echo ""
    echo "Enter desired -crf value (number only) and press enter:"
    echo "(lower is better. 0 is lossless, 10 is visually lossless, keep under 18)"
    read -r crfValue
    echo ""
    echo "Thanks!"
    clear
    echo "         __"
    echo " _(\    |@@|"
    echo "(__/\__ \--/ __"
    echo "   \___|----|  |__"
    echo "       \ }{ /\ )_ / _\ "
    echo "       /\__/\ \__O (__ "
    echo "      (--/\--)    \__/ "
    echo "      _)(  )(_"
    echo "     '---''---'"
    echo ""
    read -p "Can I start resampling? [Y/N]" -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      ffmpeg -i input.mp4 -preset ultrafast -c:v libx264 -movflags faststart -crf "${crfValue}" -vf tmix=frames="${framesAmount}":weights="${weighting}" -c:a copy -r 60 output-"${fpsAmount}"fps-resampled.mp4
    else
      echo 'Cancelling'
      exit
    fi
    break
    ;;
  "Upscaling")
    clear
    echo ""
    echo ' _________________________________________________'
    echo '"                                                 "'
    echo '"                              _ _                "'
    echo '"                             | (_)               "'
    echo '"    _   _ _ __  ___  ___ __ _| |_ _ __   ____    "'
    echo '"   | | | | |_ \/ __|/ __/ _  | | | |_ \ / _  |   "'
    echo '"   | |_| | |_) \__ \ (_| (_| | | | | | | (_| |   "'
    echo '"    \____| |__/|___/\___\____|_|_|_| |_|\___ |   "'
    echo '"         | |                             __/ |   "'
    echo '"         |_|                            |___/    "'
    echo '"                                                 "'
    echo '"_________________________________________________"'
    echo ""
    echo ""
    echo "Here you can upscale your video to 4K using the lanczos upscaling method."
    echo "Make sure your input.mp4 file is in the same folder as this script!"
    echo ""
    echo ""
    echo ""
    read -p "Is your input file recorded with osr2mp4? (this is important for me to either apply a color fix or not.) [Y/N] " -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      colorfix='colormatrix=bt601:bt709,eq=gamma_g=0.97'
      colorfixstatus='Enabled'
    else
      colorfix='colormatrix=bt601:bt709'
      colorfixstatus='Disabled'
    fi
    clear
    echo "         __"
    echo " _(\    |@@|"
    echo "(__/\__ \--/ __"
    echo "   \___|----|  |__"
    echo "       \ }{ /\ )_ / _\ "
    echo "       /\__/\ \__O (__ "
    echo "      (--/\--)    \__/ "
    echo "      _)(  )(_"
    echo "     '---''---'"
    echo ""
    echo ""

    read -p "Can I start upscaling input.mp4? (Color Fix is ${colorfixstatus}) [Y/N] " -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      ffmpeg -i input.mp4 -vcodec libx264 -preset ultrafast -crf 0 -vf scale=3840:2160:flags=lanczos,${colorfix} -c:a copy Output-Upscale4k.mp4
    else
      echo 'Cancelling'
      exit
    fi
    break
    ;;
  "Cut Video")
    clear
    echo ""
    echo ' ______________________________________________'
    echo '"                 _    _    _                  "'
    echo '"                | |  | |  (_)                 "'
    echo '"     ___  _   _ | |_ | |_  _  _ __    __ _    "'
    echo '"    / __|| | | || __|| __|| || |_ \  / _| |   "'
    echo '"   | (__ | |_| || |_ | |_ | || | | || (_| |   "'
    echo '"    \___| \__,_| \__| \__||_||_| |_| \__, |   "'
    echo '"                                      __/ |   "'
    echo '"                                     |___/    "'
    echo '"______________________________________________"'
    echo ""
    echo "Here you can get lossless video cutting."
    echo ""
    echo ""
    echo ""
    echo "Set starting time (in seconds):"
    read -r startingTime
    echo ""
    sleep 1
    echo "How long should the video be? (in seconds):"
    read -r howLongTime
    echo ""
    echo "Got it! Proceeding to next step..."
    sleep 1
    clear
    echo ""
    echo ' ______________________________________________'
    echo '"                 _    _    _                  "'
    echo '"                | |  | |  (_)                 "'
    echo '"     ___  _   _ | |_ | |_  _  _ __    __ _    "'
    echo '"    / __|| | | || __|| __|| || |_ \  / _| |   "'
    echo '"   | (__ | |_| || |_ | |_ | || | | || (_| |   "'
    echo '"    \___| \__,_| \__| \__||_||_| |_| \__, |   "'
    echo '"                                      __/ |   "'
    echo '"                                     |___/    "'
    echo '"______________________________________________"'
    echo ""
    echo ""

    read -p 'Can I start cutting the video "input.mp4"? [Y/N] ' -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      ffmpeg -ss "${startingTime}" -i input.mp4 -t "${howLongTime}" -vcodec copy -acodec copy Output-Cut-Video.mp4
    else
      echo 'Cancelling'
      exit
    fi
    break
    ;;
  "Reducing File Size")
    clear
    echo ""
    echo ' ___________________________________'
    echo '"     __ _ _           _            "'
    echo '"    / _(_) |         (_)           "'
    echo '"   | |_ _| | ___  ___ _ _______    "'
    echo '"   |  _| | |/ _ \/ __| |_  / _ \   "'
    echo '"   | | | | |  __/\__ \ |/ /  __/   "'
    echo '"   |_| |_|_|\___||___/_/___\___|   "'
    echo '"___________________________________"'
    echo ""
    echo "Here you can reduce your file size up to 10x with minimal quality loss."
    echo ""
    echo ""
    read -p 'Can I start reducing the file size of "input.mp4"? [Y/N] ' -r
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      ffmpeg -i input.mp4 -c:v libx264 -crf 10 -preset veryslow -c:a copy Output-less-file-size.mp4
    else
      echo 'Cancelling'
      exit
    fi
    break
    ;;
  "Quit")
    break
    ;;
  *) echo "invalid option $REPLY" ;;
  esac
done