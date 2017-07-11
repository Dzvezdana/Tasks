#include <ros/ros.h>
#include <ros_threads/Time.h>
#include <string>
#include <ctime>
#include <chrono>
#include <thread>
#include <iostream>

/**
  * The node threads_serves advertises ROS service /unix_time_now that takes an integer Delay_s as request and replies with a string Time. 
  * Logic of the service callback: service replies after delay of Delay_s seconds (received in service request) if 0 < Delay_s < 3, otherwise replies immediately.
  * Reply data is a string Time that contain UNIX time when the service callback was called up to microsecond.
  *
  * To run the program in new terminals: 
  * Start roscore
  * $rosrun ros_threads threads_server.cpp
  * $rosrun ros_threads threads_client.cpp
*/

class ThreadsServer{

public:

    ThreadsServer() {}
    void start_t(int t, std::string response);
    bool time_req(ros_threads::Time::Request  &req, ros_threads::Time::Response &res);

};

void ThreadsServer::start_t(int t, std::string response)
{
    std::this_thread::sleep_for(std::chrono::milliseconds(int(t * 1000)));
    ROS_INFO_STREAM("Sending back response (after delay)" + response);
}


bool ThreadsServer::time_req(ros_threads::Time::Request  &req, ros_threads::Time::Response &res)
{
    ros::Time result = ros::Time::now();
    int milisec = result.nsec/1000;
    res.Time = std::to_string(result.sec) + "." + std::to_string(milisec);  

    ROS_INFO("request Delay = %ld", (long int)req.Delay_s); 


    if(req.Delay_s > 0 && req.Delay_s < 3)
{
         std::thread t1(&ThreadsServer::start_t, this, req.Delay_s, res.Time);
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
    
    ThreadsServer srv1;

    ros::ServiceServer service = n.advertiseService("/unix_time_now", &ThreadsServer::time_req, &srv1);
  
    ros::Rate rate(1.0);

    while(n.ok()){
    rate.sleep(); 
    ros::spinOnce();
    }
    return 0;
}

