#!/bin/sh
currentAudioOutName="$(pacmd list-sinks | grep -A 1 "* index" | grep "name" | cut -d '<' -f 2- | sed 's/.$//')"
headphonesName='alsa_output.usb-Unknown_manufacturer_ATH-G1WL_0546050739-00.analog-stereo'
speakersName='alsa_output.pci-0000_0b_00.3.iec958-stereo'

if [[ "$currentAudioOutName" == "$speakersName" ]]; then
	pacmd set-default-sink $headphonesName
	echo 'Audio output set to headphones'
else
	pacmd set-default-sink $speakersName
	echo 'Audio output set to speakers'
fi
