// Generated by gencpp from file ros_threads/Time.msg
// DO NOT EDIT!


#ifndef ROS_THREADS_MESSAGE_TIME_H
#define ROS_THREADS_MESSAGE_TIME_H

#include <ros/service_traits.h>


#include <ros_threads/TimeRequest.h>
#include <ros_threads/TimeResponse.h>


namespace ros_threads
{

struct Time
{

typedef TimeRequest Request;
typedef TimeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Time
} // namespace ros_threads


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_threads::Time > {
  static const char* value()
  {
    return "5e7d20764f420c413cfb42961cc93480";
  }

  static const char* value(const ::ros_threads::Time&) { return value(); }
};

template<>
struct DataType< ::ros_threads::Time > {
  static const char* value()
  {
    return "ros_threads/Time";
  }

  static const char* value(const ::ros_threads::Time&) { return value(); }
};


// service_traits::MD5Sum< ::ros_threads::TimeRequest> should match 
// service_traits::MD5Sum< ::ros_threads::Time > 
template<>
struct MD5Sum< ::ros_threads::TimeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_threads::Time >::value();
  }
  static const char* value(const ::ros_threads::TimeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_threads::TimeRequest> should match 
// service_traits::DataType< ::ros_threads::Time > 
template<>
struct DataType< ::ros_threads::TimeRequest>
{
  static const char* value()
  {
    return DataType< ::ros_threads::Time >::value();
  }
  static const char* value(const ::ros_threads::TimeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_threads::TimeResponse> should match 
// service_traits::MD5Sum< ::ros_threads::Time > 
template<>
struct MD5Sum< ::ros_threads::TimeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_threads::Time >::value();
  }
  static const char* value(const ::ros_threads::TimeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_threads::TimeResponse> should match 
// service_traits::DataType< ::ros_threads::Time > 
template<>
struct DataType< ::ros_threads::TimeResponse>
{
  static const char* value()
  {
    return DataType< ::ros_threads::Time >::value();
  }
  static const char* value(const ::ros_threads::TimeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_THREADS_MESSAGE_TIME_H