// Generated by gencpp from file schunk_ezn64/get_positionResponse.msg
// DO NOT EDIT!


#ifndef SCHUNK_EZN64_MESSAGE_GET_POSITIONRESPONSE_H
#define SCHUNK_EZN64_MESSAGE_GET_POSITIONRESPONSE_H


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
struct get_positionResponse_
{
  typedef get_positionResponse_<ContainerAllocator> Type;

  get_positionResponse_()
    : actual_position(0.0)  {
    }
  get_positionResponse_(const ContainerAllocator& _alloc)
    : actual_position(0.0)  {
  (void)_alloc;
    }



   typedef float _actual_position_type;
  _actual_position_type actual_position;





  typedef boost::shared_ptr< ::schunk_ezn64::get_positionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::schunk_ezn64::get_positionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct get_positionResponse_

typedef ::schunk_ezn64::get_positionResponse_<std::allocator<void> > get_positionResponse;

typedef boost::shared_ptr< ::schunk_ezn64::get_positionResponse > get_positionResponsePtr;
typedef boost::shared_ptr< ::schunk_ezn64::get_positionResponse const> get_positionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::schunk_ezn64::get_positionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::schunk_ezn64::get_positionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::schunk_ezn64::get_positionResponse_<ContainerAllocator1> & lhs, const ::schunk_ezn64::get_positionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.actual_position == rhs.actual_position;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::schunk_ezn64::get_positionResponse_<ContainerAllocator1> & lhs, const ::schunk_ezn64::get_positionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace schunk_ezn64

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::schunk_ezn64::get_positionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::schunk_ezn64::get_positionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::schunk_ezn64::get_positionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::schunk_ezn64::get_positionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::schunk_ezn64::get_positionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::schunk_ezn64::get_positionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::schunk_ezn64::get_positionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "40db4b6d09ee0b910be5d9e61aacbb7d";
  }

  static const char* value(const ::schunk_ezn64::get_positionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x40db4b6d09ee0b91ULL;
  static const uint64_t static_value2 = 0x0be5d9e61aacbb7dULL;
};

template<class ContainerAllocator>
struct DataType< ::schunk_ezn64::get_positionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "schunk_ezn64/get_positionResponse";
  }

  static const char* value(const ::schunk_ezn64::get_positionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::schunk_ezn64::get_positionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 actual_position\n"
"\n"
;
  }

  static const char* value(const ::schunk_ezn64::get_positionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::schunk_ezn64::get_positionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.actual_position);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct get_positionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::schunk_ezn64::get_positionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::schunk_ezn64::get_positionResponse_<ContainerAllocator>& v)
  {
    s << indent << "actual_position: ";
    Printer<float>::stream(s, indent + "  ", v.actual_position);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCHUNK_EZN64_MESSAGE_GET_POSITIONRESPONSE_H
