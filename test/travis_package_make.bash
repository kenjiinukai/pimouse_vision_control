#!/bin/bash -xve

sudo apt update
sudo apt install opencv-data libopencv-dev python-opencv

sudo apt install ros-melodic-cv-bridge
#sudo apt install ros-melodic-cv-camera

#sync
rsync -av ./ ~/catkin_ws/src/pimouse_vision_control/

#clone pimouse_ros and cv-camera
cd ~/catkin_ws/src/
git clone https://github.com/OTL/cv_camera.git
git clone https://github.com/citueda/pimouse_ros.git

# make
cd ~/catkin_ws
catkin_make