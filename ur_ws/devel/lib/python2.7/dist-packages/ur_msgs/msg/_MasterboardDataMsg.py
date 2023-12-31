# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ur_msgs/MasterboardDataMsg.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MasterboardDataMsg(genpy.Message):
  _md5sum = "a4aa4d8ccbd10a18ef4008b679f6ccbe"
  _type = "ur_msgs/MasterboardDataMsg"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# This data structure contains the MasterboardData structure
# used by the Universal Robots controller
#
# MasterboardData is part of the data structure being send on the 
# secondary client communications interface
# 
# This data structure is send at 10 Hz on TCP port 30002
# 
# Dokumentation can be found on the Universal Robots Support Wiki
# (http://wiki03.lynero.net/Technical/DataStreamFromURController?rev=8)

int16 digital_input_bits
int16 digital_output_bits
int8 analog_input_range0
int8 analog_input_range1
float64 analog_input0
float64 analog_input1
int8 analog_output_domain0
int8 analog_output_domain1
float64 analog_output0
float64 analog_output1
float32 masterboard_temperature
float32 robot_voltage_48V
float32 robot_current
float32 master_io_current
uint8 master_safety_state
uint8 master_onoff_state
"""
  __slots__ = ['digital_input_bits','digital_output_bits','analog_input_range0','analog_input_range1','analog_input0','analog_input1','analog_output_domain0','analog_output_domain1','analog_output0','analog_output1','masterboard_temperature','robot_voltage_48V','robot_current','master_io_current','master_safety_state','master_onoff_state']
  _slot_types = ['int16','int16','int8','int8','float64','float64','int8','int8','float64','float64','float32','float32','float32','float32','uint8','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       digital_input_bits,digital_output_bits,analog_input_range0,analog_input_range1,analog_input0,analog_input1,analog_output_domain0,analog_output_domain1,analog_output0,analog_output1,masterboard_temperature,robot_voltage_48V,robot_current,master_io_current,master_safety_state,master_onoff_state

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MasterboardDataMsg, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.digital_input_bits is None:
        self.digital_input_bits = 0
      if self.digital_output_bits is None:
        self.digital_output_bits = 0
      if self.analog_input_range0 is None:
        self.analog_input_range0 = 0
      if self.analog_input_range1 is None:
        self.analog_input_range1 = 0
      if self.analog_input0 is None:
        self.analog_input0 = 0.
      if self.analog_input1 is None:
        self.analog_input1 = 0.
      if self.analog_output_domain0 is None:
        self.analog_output_domain0 = 0
      if self.analog_output_domain1 is None:
        self.analog_output_domain1 = 0
      if self.analog_output0 is None:
        self.analog_output0 = 0.
      if self.analog_output1 is None:
        self.analog_output1 = 0.
      if self.masterboard_temperature is None:
        self.masterboard_temperature = 0.
      if self.robot_voltage_48V is None:
        self.robot_voltage_48V = 0.
      if self.robot_current is None:
        self.robot_current = 0.
      if self.master_io_current is None:
        self.master_io_current = 0.
      if self.master_safety_state is None:
        self.master_safety_state = 0
      if self.master_onoff_state is None:
        self.master_onoff_state = 0
    else:
      self.digital_input_bits = 0
      self.digital_output_bits = 0
      self.analog_input_range0 = 0
      self.analog_input_range1 = 0
      self.analog_input0 = 0.
      self.analog_input1 = 0.
      self.analog_output_domain0 = 0
      self.analog_output_domain1 = 0
      self.analog_output0 = 0.
      self.analog_output1 = 0.
      self.masterboard_temperature = 0.
      self.robot_voltage_48V = 0.
      self.robot_current = 0.
      self.master_io_current = 0.
      self.master_safety_state = 0
      self.master_onoff_state = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2h2b2d2b2d4f2B().pack(_x.digital_input_bits, _x.digital_output_bits, _x.analog_input_range0, _x.analog_input_range1, _x.analog_input0, _x.analog_input1, _x.analog_output_domain0, _x.analog_output_domain1, _x.analog_output0, _x.analog_output1, _x.masterboard_temperature, _x.robot_voltage_48V, _x.robot_current, _x.master_io_current, _x.master_safety_state, _x.master_onoff_state))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 58
      (_x.digital_input_bits, _x.digital_output_bits, _x.analog_input_range0, _x.analog_input_range1, _x.analog_input0, _x.analog_input1, _x.analog_output_domain0, _x.analog_output_domain1, _x.analog_output0, _x.analog_output1, _x.masterboard_temperature, _x.robot_voltage_48V, _x.robot_current, _x.master_io_current, _x.master_safety_state, _x.master_onoff_state,) = _get_struct_2h2b2d2b2d4f2B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2h2b2d2b2d4f2B().pack(_x.digital_input_bits, _x.digital_output_bits, _x.analog_input_range0, _x.analog_input_range1, _x.analog_input0, _x.analog_input1, _x.analog_output_domain0, _x.analog_output_domain1, _x.analog_output0, _x.analog_output1, _x.masterboard_temperature, _x.robot_voltage_48V, _x.robot_current, _x.master_io_current, _x.master_safety_state, _x.master_onoff_state))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 58
      (_x.digital_input_bits, _x.digital_output_bits, _x.analog_input_range0, _x.analog_input_range1, _x.analog_input0, _x.analog_input1, _x.analog_output_domain0, _x.analog_output_domain1, _x.analog_output0, _x.analog_output1, _x.masterboard_temperature, _x.robot_voltage_48V, _x.robot_current, _x.master_io_current, _x.master_safety_state, _x.master_onoff_state,) = _get_struct_2h2b2d2b2d4f2B().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2h2b2d2b2d4f2B = None
def _get_struct_2h2b2d2b2d4f2B():
    global _struct_2h2b2d2b2d4f2B
    if _struct_2h2b2d2b2d4f2B is None:
        _struct_2h2b2d2b2d4f2B = struct.Struct("<2h2b2d2b2d4f2B")
    return _struct_2h2b2d2b2d4f2B
