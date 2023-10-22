#!/bin/sh

sudo apt install -y libglibmm-2.4-dev libsndfile1-dev libcurl4-nss-dev libarchive-dev liblo-dev libtag1-dev vamp-plugin-sdk librubberband-dev librubberband2 rubberband-cli rubberband-ladspa rubberband-vamp ibfftw3-dev
cd ~
git clone https://git.aubio.org/aubio/aubio
cd ~/aubio
make
sudo ./waf install
cd ~/ardour
sudo apt install -y libxml2-dev liblrdf0-dev libsamplerate0-dev lv2-dev libserd-dev libsord-dev libsratom-dev liblilv-dev libgtkmm-2.4-dev libsoundtouch-dev libsuil-dev libcppunit-dev libusb-1.0-0-dev libwebsockets-dev
cd ~/ardour
./waf configure
./waf build
