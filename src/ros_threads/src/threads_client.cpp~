#include <ros/ros.h>
#include <beginner_tutorials/AddTwoInts.h>
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "threads_server");
  if (argc != 3)
  {
    ROS_INFO("usage: return time");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<ros_threads::Time>("unix_time_now");
  ros_threads::Time srv;
  srv.request.a = atoll(argv[1]);
  if (client.call(srv))
  {
    ROS_INFO("Sum: %ld", (long int)srv.response.delay);
  }
  else
  {
    ROS_ERROR("Failed to call service add_two_ints");
    return 1;
  }

  return 0;
}
