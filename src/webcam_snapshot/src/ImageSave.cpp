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
#include <fstream>

/**
 * This class contains a ros node that subscribes to the image stream (/usb_cam/image_raw) of your webcam and provides
 * a service called /take_snapshot which saves the image in /tmp/webcam/ as .jpg file.
 *
 * To run the program in new terminals: 
 * Start roscore
 * $rosrun webcam_snapshot ImageSave
 * $roslaunch usb_cam usb_cam.launch
 * $rosservice call /snapshot
 */

class WebcamSnapshot 
{    
    //! @name global variables
    //@{ 
    sensor_msgs::Image img_;
    //@}

public:

    WebcamSnapshot() {}
    
    // imgCallback (subcribes to /usb_cam/image_raw)
    void imgCallback(const sensor_msgs::ImageConstPtr& msg);
    // Takes the snapshot and saves it in /tmp/webcam/ without overwriting the previous images
    bool snapshot(std_srvs::Empty::Request &req, std_srvs::Empty::Request &res);

};

void WebcamSnapshot::imgCallback(const sensor_msgs::ImageConstPtr& msg)
{

// This function takes the image which is passed in the callback function for global use
    
    img_=*msg;
}


bool WebcamSnapshot::snapshot(std_srvs::Empty::Request &req, std_srvs::Empty::Request &res)
{
    ROS_INFO("Service for taking snapshots started");
    int img_count = 0; // image counter
  
    cv_bridge::CvImagePtr cv_ptr;

    cv_ptr = cv_bridge::toCvCopy(img_, sensor_msgs::image_encodings::BGR8);

    std::stringstream img_name;    // variable for the filepath+name of the image

    while(1)
    {
        img_name<<"/tmp/webcam/ "<<img_count<<".jpg";    // the path to save the images

        std::ifstream ifile(img_name.str());    // check if there is already a file with the same name

	// if there is no file with the same name, save the image in /temp/webcam/ as a .jpg 
        if (!ifile)    
        {   
            ROS_ASSERT(cv::imwrite(img_name.str(),cv_ptr->image));    // writes the image
            img_count ++;
	    break;
        }
        else
        {  
            img_count = img_count+1;	 
            img_name.str("");  
        }
    }

    return true;
}


int main(int argc, char** argv)
{
    // rosnode inicialization
    ros::init(argc, argv, "image_converter");

    // create node handle
    ros::NodeHandle n;

    WebcamSnapshot snap;
    ros::Subscriber sub = n.subscribe("/usb_cam/image_raw", 1, &WebcamSnapshot::imgCallback, &snap);
    ros::ServiceServer snapshot_service = n.advertiseService("/snapshot", &WebcamSnapshot::snapshot,&snap);
  
    ros::spin();
    cv::destroyWindow("Image window");
   
    return 0;
}
