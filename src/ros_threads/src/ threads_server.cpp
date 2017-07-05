#include <ros/ros.h>
#include <ros_threads/Time.h>
#include <thread>
#include <chrono>
#include <iostream>
#include <ctime>


bool time_req(ros_threads::Time::Request  &req,
        ros_threads::Time::Response &res)
{
  
  ROS_INFO("Service started");

  std::time_t result = std::time(nullptr);
  std::cout << std::asctime(std::localtime(&result))
  << result << " seconds since the Epoch\n";
 
  res.delay = req.a; //ova go vrakjash
  ROS_INFO("request: x=%ld, (long int)req.a");

  ROS_INFO("sending back response: [%ld]", (long int)res.delay);
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "threads_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("unix_time_now", time_req);
  
  std::thread t1(time_req, delay_input1, "Command1");
  std::thread t2(time_req, delay_input2, "Command2"); 
   
  t1.join();
  t2.join();


 ros::spin();

 return 0;
}
