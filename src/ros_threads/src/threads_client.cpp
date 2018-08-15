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

/**
  *The node threads_client every half a second prints current UNIX time up to nanosecond in this message format: 
  * Current Time: *unix_time_nanosec*
  * every second a /unix_time_now service request is sent with randomly generated Delay_s between 0 and 5; 
  * and when the reply comes print the difference in milliseconds between the current time and service reply Time in this message format: 
  * Time Difference: *diff_between_current_time_and_reply_Time_ms*
  *
  * To run the program in new terminals: 
  * Start roscore
  * $rosrun ros_threads threads_server.cpp
  * $rosrun ros_threads threads_client.cpp
*/

class ThreadClient {

    private:
    
    //! @name global variables
    //@{
    ros::NodeHandle n_; // node handle
    //@}

    public:

    ThreadClient() {}  // constructor
   
     /**
     * Thread function that generates the random delay, calls the service and based on the response 
     calculates the difference in miliseconds between the current time and service reply Time
     */
    bool start_thread();
     
};

bool ThreadClient::start_thread() {

    ros::ServiceClient client;
    client = n_.serviceClient<ros_threads::Time>("/unix_time_now");
    ros_threads::Time srv;

    ros::Rate r_hz(1.0); // ros rate in Hz (1 sec)
    double result, int_part;
    int miliseconds_result;
    double decimal_part;
    int diff;

    // generate random delay between between 0 and 5
    while(1) {
        int random_number = rand() % 4 + 1; 
        srv.request.Delay_s = random_number;
  
    // calculate the difference
    if (client.call(srv)) { 
    	ros::Time time_now = ros::Time::now(); // gets the current time
        std::stringstream(srv.response.Time) >> result; // gets the response from the server
        decimal_part = modf(result, &int_part); 
        miliseconds_result = decimal_part*1000;
        diff =  time_now.nsec/1000000 - miliseconds_result; // calculates the difference
        ROS_INFO("Difference in ms: %d", diff);
    }
    else {
        ROS_ERROR("Failed to call service /unix_time_now");

    return 1; 
}
    r_hz.sleep();
}
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "threads_client");  // node initialization 
   
    ThreadClient cl1;  // create object
  
    std::thread t1(&ThreadClient::start_thread, ThreadClient()); // call the thread
    t1.detach();

    ros::Rate rate_hz(2.0); // ros rate in Hz (0.5 sec)

    while(ros::ok()) {
    	ros::Time current_time = ros::Time::now(); // current time
    	ROS_INFO("Current_time: %d.%d", current_time.sec,current_time.nsec); // print the current time
    	rate_hz.sleep(); 
    	ros::spinOnce();
    }

    return 0;
}
