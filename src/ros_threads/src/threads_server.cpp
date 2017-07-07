#include <ros/ros.h>
#include <ros_threads/Time.h>
#include <string>
#include <ctime>
#include <chrono>
#include <thread>
#include <iostream>


void start_t(int t, std::string response)
{
std::this_thread::sleep_for(std::chrono::milliseconds(int(t * 1000)));
ROS_INFO_STREAM("Sending back response (after delay)" + response);
}


bool time_req(ros_threads::Time::Request  &req,
        ros_threads::Time::Response &res)
{

  //std::time_t result = std::time(nullptr);
  //res.Time = std::to_string(result);

    ros::Time result = ros::Time::now();
    int milisec = result.nsec/1000;
    res.Time = std::to_string(result.sec) + "." + std::to_string(milisec);  

    ROS_INFO("request Delay = %ld", (long int)req.Delay_s); 


  if(req.Delay_s > 0 && req.Delay_s < 3)
{
  std::thread t1(start_t, req.Delay_s, res.Time);
  t1.detach();
}

  else 
{
  ROS_INFO_STREAM("Sending back response (without delay)" + res.Time);
} 

  return true;
}

int main(int argc, char **argv)
{
 
  ros::init(argc, argv, "threads_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("/unix_time_now", time_req);
  
  ros::Rate rate(1.0);

  while(n.ok()){
  rate.sleep(); 
  ros::spinOnce();
  }
 return 0;
}

