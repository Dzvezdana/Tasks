#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <std_srvs/Empty.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <sstream>

sensor_msgs::Image image_;
static const std::string OPENCV_WINDOW = "Image window";
int img_count = 0;

void imgCallback(const sensor_msgs::ImageConstPtr& msg)
  {

    image_=*msg;
  }

bool snapshot(std_srvs::Empty::Request &req, std_srvs::Empty::Request &res){

    ROS_INFO("Service for taking snapshots started");
  
    cv_bridge::CvImagePtr cv_ptr;
    try
    {
    cv_ptr = cv_bridge::toCvCopy(image_, sensor_msgs::image_encodings::BGR8);
    std::stringstream sstream;
    sstream<<"/tmp/webcam/ "<<img_count<<".jpg";
   
    ROS_ASSERT(cv::imwrite(sstream.str(),cv_ptr->image));
    img_count++;
    return true;
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return true;
    }
}


int main(int argc, char** argv)
{
  ros::init(argc, argv, "image_converter");
  ros::NodeHandle n;

  ros::Subscriber sub = n.subscribe("/usb_cam/image_raw",1,imgCallback);
  ros::ServiceServer snapshot_service = n.advertiseService("/snapshot", snapshot);
  
  ros::spin();
  cv::destroyWindow("Image window");
   
  return 0;
}
