#!/bin/bash -xve

sudo apt update
sudo apt install opencv-data libopencv-dev python-opencv

sudo apt install ros-melodic-cv-bridge
#sudo apt-get install ros-melodic-cv-camera

#clone cv-camera
git clone https://github.com/OTL/cv_camera.git

#sync
rsync -av ./ ~/catkin_ws/src/pimouse_vision_control/

#clone pimouse_ros
cd ~/catkin_ws/src/
git clone https://github.com/citueda/pimouse_ros.git

# make
cd ~/catkin_ws
catkin_make