#include <ros/ros.h>
#include <std_msgs/String.h>

int main(int argc, char** argv)
{
  ros::init(argc, argv, "test");

  ros::NodeHandle nh("~");
  ros::Publisher p = nh.advertise<std_msgs::String> ("msg", 1);
  while(true)
  {
    std::string inputString;
    std::cout << "Give input";
    std::getline(std::cin, inputString);
    std_msgs::String msg;

    if(inputString.compare("something") == 0)
    {
      //send a request to the node serving out the messages
      //print out recieved messages.
      msg.data = inputString;
      p.publish(msg);
    }

    ros::spinOnce();
  }

  return 0;
}
