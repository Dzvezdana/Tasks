#include <ros/ros.h>
#include <ros_threads/Time.h>
#include <sstream>
#include <cstdlib>
#include <random>
#include <string>
#include <ctime>
#include <chrono>
#include <string>
#include <thread>
#include <iostream>
#include <math.h>


ros::ServiceClient client;

bool start_thread()
{ 

  ros_threads::Time srv;

  ros::Rate r(1.0);
  double result, int_part;
  int miliseconds_result;
  double decimal_part;
  int diff;

  while(1){
  
  int random_number = rand() % 4 + 1; 
  srv.request.Delay_s = random_number;
  

  if (client.call(srv))
   { 
    
    ros::Time time_now = ros::Time::now();
    std::stringstream(srv.response.Time) >> result;
    //ROS_INFO("NUM: %lf", result);
    decimal_part = modf(result, &int_part);
    miliseconds_result = decimal_part*1000;
    diff =  time_now.nsec/1000000 - miliseconds_result;
    ROS_INFO("Difference in ms: %d", diff);
   }
  else
   {
    ROS_ERROR("Failed to call service /unix_time_now");
  return 1; }
}
}


int main(int argc, char **argv)
{
  ros::init(argc, argv, "threads_client");

  ros::NodeHandle n;
  client = n.serviceClient<ros_threads::Time>("/unix_time_now");
  
  std::thread t1(start_thread);
  t1.detach();

  ros::Rate rate(2.0); //In Hertz

  while(n.ok())
  {

  ros::Time current_time = ros::Time::now();
  ROS_INFO("Current_time: %d.%d", current_time.sec,current_time.nsec);
  rate.sleep(); 
  ros::spinOnce();
  }

  return 0;
}
