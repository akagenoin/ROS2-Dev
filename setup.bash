#add APT repository
sudo apt update && sudo apt install curl gnupg2 lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key  -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

#install ros-foxy
sudo apt update
sudo apt install ros-foxy-desktop

#setup enviroment
echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc
source ~/.bashrc

#install colcon_build
sudo apt install python3-colcon-common-extensions

#install ROS2 command 
sudo apt install python3-argcomplete

#make_work_space 
sudo mkdir -p ~/ros2_ws/src
cd ~/ros2_ws
colon build 
