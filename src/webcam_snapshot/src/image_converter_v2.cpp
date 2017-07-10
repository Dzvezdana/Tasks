#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <std_srvs/Empty.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/core/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <sstream>
#include <iostream>

/**
 * This class contains a ros node that subscribes to the image stream of your webcam and provides
 * a service called /take_snapshot.
 */

class WebcamSnapshot {

    sensor_msgs::Image img_;
    int img_count = 0;

public:

    WebcamSnapshot() {}
    void imgCallback(const sensor_msgs::ImageConstPtr& msg);
    bool snapshot(std_srvs::Empty::Request &req, std_srvs::Empty::Request &res);

};

WebcamSnapshot(){

    ros::Subscriber sub = n.subscribe("/usb_cam/image_raw",1,imgCallback);
    ros::ServiceServer snapshot_service = n.advertiseService("/snapshot", snapshot);
}

void WebcamSnapshot::imgCallback(const sensor_msgs::ImageConstPtr& msg){
    
    img_=*msg;
}

bool WebcamSnapshot::snapshot(std_srvs::Empty::Request &req, std_srvs::Empty::Request &res){

    ROS_INFO("Service for taking snapshots started");
  
    cv_bridge::CvImagePtr cv_ptr;

    cv_ptr = cv_bridge::toCvCopy(img_, sensor_msgs::image_encodings::BGR8);
    std::stringstream sstream;
    sstream<<"/tmp/webcam/ "<<img_count<<".jpg";
   
    ROS_ASSERT(cv::imwrite(sstream.str(),cv_ptr->image));
    img_count++;
    return true;
}


int main(int argc, char** argv)
{
  ros::init(argc, argv, "image_converter");
  ros::NodeHandle n;

  // Instance
  WebcamSnapshot snap;
  
  ros::spin();
  cv::destroyWindow("Image window");
   
  return 0;
}
