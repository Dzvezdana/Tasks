// Generated by gencpp from file ros_threads/time_threads.msg
// DO NOT EDIT!


#ifndef ROS_THREADS_MESSAGE_TIME_THREADS_H
#define ROS_THREADS_MESSAGE_TIME_THREADS_H

#include <ros/service_traits.h>


#include <ros_threads/time_threadsRequest.h>
#include <ros_threads/time_threadsResponse.h>


namespace ros_threads
{

struct time_threads
{

typedef time_threadsRequest Request;
typedef time_threadsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct time_threads
} // namespace ros_threads


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ros_threads::time_threads > {
  static const char* value()
  {
    return "5e7d20764f420c413cfb42961cc93480";
  }

  static const char* value(const ::ros_threads::time_threads&) { return value(); }
};

template<>
struct DataType< ::ros_threads::time_threads > {
  static const char* value()
  {
    return "ros_threads/time_threads";
  }

  static const char* value(const ::ros_threads::time_threads&) { return value(); }
};


// service_traits::MD5Sum< ::ros_threads::time_threadsRequest> should match 
// service_traits::MD5Sum< ::ros_threads::time_threads > 
template<>
struct MD5Sum< ::ros_threads::time_threadsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ros_threads::time_threads >::value();
  }
  static const char* value(const ::ros_threads::time_threadsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_threads::time_threadsRequest> should match 
// service_traits::DataType< ::ros_threads::time_threads > 
template<>
struct DataType< ::ros_threads::time_threadsRequest>
{
  static const char* value()
  {
    return DataType< ::ros_threads::time_threads >::value();
  }
  static const char* value(const ::ros_threads::time_threadsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ros_threads::time_threadsResponse> should match 
// service_traits::MD5Sum< ::ros_threads::time_threads > 
template<>
struct MD5Sum< ::ros_threads::time_threadsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ros_threads::time_threads >::value();
  }
  static const char* value(const ::ros_threads::time_threadsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ros_threads::time_threadsResponse> should match 
// service_traits::DataType< ::ros_threads::time_threads > 
template<>
struct DataType< ::ros_threads::time_threadsResponse>
{
  static const char* value()
  {
    return DataType< ::ros_threads::time_threads >::value();
  }
  static const char* value(const ::ros_threads::time_threadsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ROS_THREADS_MESSAGE_TIME_THREADS_H