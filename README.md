# Cartographer for Racecar

For the most up to date instructions, please refer to the [official google cartographer documentation](https://google-cartographer-ros.readthedocs.io/en/latest/).

If cartographer is not already installed, [install cartographer](https://google-cartographer-ros.readthedocs.io/en/latest/):

    # Install ninja
    sudo apt-get install ninja-build
    
    # Make a workspace for cartographer
    mkdir ~/cartographer_ws
    cd ~/cartographer_ws
    wstool init src
    
    # Fetch cartographer_ros
    wstool merge -t src https://raw.githubusercontent.com/googlecartographer/cartographer_ros/master/cartographer_ros.rosinstall
    wstool update -t src
    
    # Install proto3
    src/cartographer/scripts/install_proto3.sh
    
    # Install deb dependencies
    sudo rosdep init
    rosdep update
    rosdep install --from-paths src --ignore-src --rosdistro=${ROS_DISTRO} -y
    
    # Build and install.
    catkin_make_isolated --install --use-ninja
    source install_isolated/setup.bash

Then add this to your ~/.bashrc

    source ~/cartographer_ws/install_isolated/setup.bash

Clone this repo into your `cartographer_ws` and `catkin_make`

    git clone https://github.com/mit-rss/cartographer_config.git ~/cartographer_ws/src/
    cd ~/cartographer_ws
    catkin_make

Then run it via:

    roslaunch cartographer_config cartographer.launch
