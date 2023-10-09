// Generated by gencpp from file schunk_ezn64/acknowledge_errorResponse.msg
// DO NOT EDIT!


#ifndef SCHUNK_EZN64_MESSAGE_ACKNOWLEDGE_ERRORRESPONSE_H
#define SCHUNK_EZN64_MESSAGE_ACKNOWLEDGE_ERRORRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace schunk_ezn64
{
template <class ContainerAllocator>
struct acknowledge_errorResponse_
{
  typedef acknowledge_errorResponse_<ContainerAllocator> Type;

  acknowledge_errorResponse_()
    : acknowledge_response(false)  {
    }
  acknowledge_errorResponse_(const ContainerAllocator& _alloc)
    : acknowledge_response(false)  {
  (void)_alloc;
    }



   typedef uint8_t _acknowledge_response_type;
  _acknowledge_response_type acknowledge_response;





  typedef boost::shared_ptr< ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator> const> ConstPtr;

}; // struct acknowledge_errorResponse_

typedef ::schunk_ezn64::acknowledge_errorResponse_<std::allocator<void> > acknowledge_errorResponse;

typedef boost::shared_ptr< ::schunk_ezn64::acknowledge_errorResponse > acknowledge_errorResponsePtr;
typedef boost::shared_ptr< ::schunk_ezn64::acknowledge_errorResponse const> acknowledge_errorResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator1> & lhs, const ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator2> & rhs)
{
  return lhs.acknowledge_response == rhs.acknowledge_response;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator1> & lhs, const ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace schunk_ezn64

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "216312424a7b13297dba83de8033144e";
  }

  static const char* value(const ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x216312424a7b1329ULL;
  static const uint64_t static_value2 = 0x7dba83de8033144eULL;
};

template<class ContainerAllocator>
struct DataType< ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "schunk_ezn64/acknowledge_errorResponse";
  }

  static const char* value(const ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool acknowledge_response\n"
"\n"
;
  }

  static const char* value(const ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.acknowledge_response);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct acknowledge_errorResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::schunk_ezn64::acknowledge_errorResponse_<ContainerAllocator>& v)
  {
    s << indent << "acknowledge_response: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.acknowledge_response);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCHUNK_EZN64_MESSAGE_ACKNOWLEDGE_ERRORRESPONSE_H
