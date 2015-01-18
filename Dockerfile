FROM ubuntu:14.04

MAINTAINER pamtrak06 <pamtrak06@gmail.com>

# Update
RUN apt-get -y update && apt-get -y install subversion scons build-essential


RUN apt-get install -y g++ libx11-dev libgl1-mesa-dev libxi-dev zlib1g-dev libpng12-dev libglu1-mesa-dev libjpeg62-dev libfreetype6-dev libtiff4-dev libopenexr-dev libsdl1.2-dev libopenal-dev python3-dev libfftw3-dev libsamplerate0-dev libjack-dev libavformat-dev libxvidcore-dev libx264-dev libmp3lame-dev libavdevice-dev

# get blender sources
RUN svn checkout https://svn.blender.org/svnroot/bf-blender/trunk/blender blender

RUN svn update

RUN cd blender; scons





