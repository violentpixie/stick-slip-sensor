// Generated by gencpp from file schunk_ezn64/reference.msg
// DO NOT EDIT!


#ifndef SCHUNK_EZN64_MESSAGE_REFERENCE_H
#define SCHUNK_EZN64_MESSAGE_REFERENCE_H

#include <ros/service_traits.h>


#include <schunk_ezn64/referenceRequest.h>
#include <schunk_ezn64/referenceResponse.h>


namespace schunk_ezn64
{

struct reference
{

typedef referenceRequest Request;
typedef referenceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct reference
} // namespace schunk_ezn64


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::schunk_ezn64::reference > {
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::schunk_ezn64::reference&) { return value(); }
};

template<>
struct DataType< ::schunk_ezn64::reference > {
  static const char* value()
  {
    return "schunk_ezn64/reference";
  }

  static const char* value(const ::schunk_ezn64::reference&) { return value(); }
};


// service_traits::MD5Sum< ::schunk_ezn64::referenceRequest> should match
// service_traits::MD5Sum< ::schunk_ezn64::reference >
template<>
struct MD5Sum< ::schunk_ezn64::referenceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::schunk_ezn64::reference >::value();
  }
  static const char* value(const ::schunk_ezn64::referenceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::schunk_ezn64::referenceRequest> should match
// service_traits::DataType< ::schunk_ezn64::reference >
template<>
struct DataType< ::schunk_ezn64::referenceRequest>
{
  static const char* value()
  {
    return DataType< ::schunk_ezn64::reference >::value();
  }
  static const char* value(const ::schunk_ezn64::referenceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::schunk_ezn64::referenceResponse> should match
// service_traits::MD5Sum< ::schunk_ezn64::reference >
template<>
struct MD5Sum< ::schunk_ezn64::referenceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::schunk_ezn64::reference >::value();
  }
  static const char* value(const ::schunk_ezn64::referenceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::schunk_ezn64::referenceResponse> should match
// service_traits::DataType< ::schunk_ezn64::reference >
template<>
struct DataType< ::schunk_ezn64::referenceResponse>
{
  static const char* value()
  {
    return DataType< ::schunk_ezn64::reference >::value();
  }
  static const char* value(const ::schunk_ezn64::referenceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SCHUNK_EZN64_MESSAGE_REFERENCE_H