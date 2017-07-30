// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: message.proto

#ifndef PROTOBUF_message_2eproto__INCLUDED
#define PROTOBUF_message_2eproto__INCLUDED

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 2006000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 2006001 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>
#include <google/protobuf/extension_set.h>
#include <google/protobuf/unknown_field_set.h>
// @@protoc_insertion_point(includes)

// Internal implementation detail -- do not call these.
void  protobuf_AddDesc_message_2eproto();
void protobuf_AssignDesc_message_2eproto();
void protobuf_ShutdownFile_message_2eproto();

class Message;
class Message_Frame;
class Message_Frame_Point;

// ===================================================================

class Message_Frame_Point : public ::google::protobuf::Message {
 public:
  Message_Frame_Point();
  virtual ~Message_Frame_Point();

  Message_Frame_Point(const Message_Frame_Point& from);

  inline Message_Frame_Point& operator=(const Message_Frame_Point& from) {
    CopyFrom(from);
    return *this;
  }

  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _unknown_fields_;
  }

  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return &_unknown_fields_;
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const Message_Frame_Point& default_instance();

  void Swap(Message_Frame_Point* other);

  // implements Message ----------------------------------------------

  Message_Frame_Point* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const Message_Frame_Point& from);
  void MergeFrom(const Message_Frame_Point& from);
  void Clear();
  bool IsInitialized() const;

  int ByteSize() const;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input);
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const;
  ::google::protobuf::uint8* SerializeWithCachedSizesToArray(::google::protobuf::uint8* output) const;
  int GetCachedSize() const { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const;
  public:
  ::google::protobuf::Metadata GetMetadata() const;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // required float x = 1;
  inline bool has_x() const;
  inline void clear_x();
  static const int kXFieldNumber = 1;
  inline float x() const;
  inline void set_x(float value);

  // required float y = 2;
  inline bool has_y() const;
  inline void clear_y();
  static const int kYFieldNumber = 2;
  inline float y() const;
  inline void set_y(float value);

  // required float z = 3;
  inline bool has_z() const;
  inline void clear_z();
  static const int kZFieldNumber = 3;
  inline float z() const;
  inline void set_z(float value);

  // required uint32 r = 4;
  inline bool has_r() const;
  inline void clear_r();
  static const int kRFieldNumber = 4;
  inline ::google::protobuf::uint32 r() const;
  inline void set_r(::google::protobuf::uint32 value);

  // required uint32 g = 5;
  inline bool has_g() const;
  inline void clear_g();
  static const int kGFieldNumber = 5;
  inline ::google::protobuf::uint32 g() const;
  inline void set_g(::google::protobuf::uint32 value);

  // required uint32 b = 6;
  inline bool has_b() const;
  inline void clear_b();
  static const int kBFieldNumber = 6;
  inline ::google::protobuf::uint32 b() const;
  inline void set_b(::google::protobuf::uint32 value);

  // @@protoc_insertion_point(class_scope:Message.Frame.Point)
 private:
  inline void set_has_x();
  inline void clear_has_x();
  inline void set_has_y();
  inline void clear_has_y();
  inline void set_has_z();
  inline void clear_has_z();
  inline void set_has_r();
  inline void clear_has_r();
  inline void set_has_g();
  inline void clear_has_g();
  inline void set_has_b();
  inline void clear_has_b();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  float x_;
  float y_;
  float z_;
  ::google::protobuf::uint32 r_;
  ::google::protobuf::uint32 g_;
  ::google::protobuf::uint32 b_;
  friend void  protobuf_AddDesc_message_2eproto();
  friend void protobuf_AssignDesc_message_2eproto();
  friend void protobuf_ShutdownFile_message_2eproto();

  void InitAsDefaultInstance();
  static Message_Frame_Point* default_instance_;
};
// -------------------------------------------------------------------

class Message_Frame : public ::google::protobuf::Message {
 public:
  Message_Frame();
  virtual ~Message_Frame();

  Message_Frame(const Message_Frame& from);

  inline Message_Frame& operator=(const Message_Frame& from) {
    CopyFrom(from);
    return *this;
  }

  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _unknown_fields_;
  }

  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return &_unknown_fields_;
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const Message_Frame& default_instance();

  void Swap(Message_Frame* other);

  // implements Message ----------------------------------------------

  Message_Frame* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const Message_Frame& from);
  void MergeFrom(const Message_Frame& from);
  void Clear();
  bool IsInitialized() const;

  int ByteSize() const;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input);
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const;
  ::google::protobuf::uint8* SerializeWithCachedSizesToArray(::google::protobuf::uint8* output) const;
  int GetCachedSize() const { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const;
  public:
  ::google::protobuf::Metadata GetMetadata() const;

  // nested types ----------------------------------------------------

  typedef Message_Frame_Point Point;

  // accessors -------------------------------------------------------

  // repeated .Message.Frame.Point points = 1;
  inline int points_size() const;
  inline void clear_points();
  static const int kPointsFieldNumber = 1;
  inline const ::Message_Frame_Point& points(int index) const;
  inline ::Message_Frame_Point* mutable_points(int index);
  inline ::Message_Frame_Point* add_points();
  inline const ::google::protobuf::RepeatedPtrField< ::Message_Frame_Point >&
      points() const;
  inline ::google::protobuf::RepeatedPtrField< ::Message_Frame_Point >*
      mutable_points();

  // required float timestamp = 2;
  inline bool has_timestamp() const;
  inline void clear_timestamp();
  static const int kTimestampFieldNumber = 2;
  inline float timestamp() const;
  inline void set_timestamp(float value);

  // @@protoc_insertion_point(class_scope:Message.Frame)
 private:
  inline void set_has_timestamp();
  inline void clear_has_timestamp();

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::google::protobuf::RepeatedPtrField< ::Message_Frame_Point > points_;
  float timestamp_;
  friend void  protobuf_AddDesc_message_2eproto();
  friend void protobuf_AssignDesc_message_2eproto();
  friend void protobuf_ShutdownFile_message_2eproto();

  void InitAsDefaultInstance();
  static Message_Frame* default_instance_;
};
// -------------------------------------------------------------------

class Message : public ::google::protobuf::Message {
 public:
  Message();
  virtual ~Message();

  Message(const Message& from);

  inline Message& operator=(const Message& from) {
    CopyFrom(from);
    return *this;
  }

  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _unknown_fields_;
  }

  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return &_unknown_fields_;
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const Message& default_instance();

  void Swap(Message* other);

  // implements Message ----------------------------------------------

  Message* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const Message& from);
  void MergeFrom(const Message& from);
  void Clear();
  bool IsInitialized() const;

  int ByteSize() const;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input);
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const;
  ::google::protobuf::uint8* SerializeWithCachedSizesToArray(::google::protobuf::uint8* output) const;
  int GetCachedSize() const { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const;
  public:
  ::google::protobuf::Metadata GetMetadata() const;

  // nested types ----------------------------------------------------

  typedef Message_Frame Frame;

  // accessors -------------------------------------------------------

  // repeated .Message.Frame frames = 1;
  inline int frames_size() const;
  inline void clear_frames();
  static const int kFramesFieldNumber = 1;
  inline const ::Message_Frame& frames(int index) const;
  inline ::Message_Frame* mutable_frames(int index);
  inline ::Message_Frame* add_frames();
  inline const ::google::protobuf::RepeatedPtrField< ::Message_Frame >&
      frames() const;
  inline ::google::protobuf::RepeatedPtrField< ::Message_Frame >*
      mutable_frames();

  // @@protoc_insertion_point(class_scope:Message)
 private:

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::google::protobuf::RepeatedPtrField< ::Message_Frame > frames_;
  friend void  protobuf_AddDesc_message_2eproto();
  friend void protobuf_AssignDesc_message_2eproto();
  friend void protobuf_ShutdownFile_message_2eproto();

  void InitAsDefaultInstance();
  static Message* default_instance_;
};
// ===================================================================


// ===================================================================

// Message_Frame_Point

// required float x = 1;
inline bool Message_Frame_Point::has_x() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void Message_Frame_Point::set_has_x() {
  _has_bits_[0] |= 0x00000001u;
}
inline void Message_Frame_Point::clear_has_x() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void Message_Frame_Point::clear_x() {
  x_ = 0;
  clear_has_x();
}
inline float Message_Frame_Point::x() const {
  // @@protoc_insertion_point(field_get:Message.Frame.Point.x)
  return x_;
}
inline void Message_Frame_Point::set_x(float value) {
  set_has_x();
  x_ = value;
  // @@protoc_insertion_point(field_set:Message.Frame.Point.x)
}

// required float y = 2;
inline bool Message_Frame_Point::has_y() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void Message_Frame_Point::set_has_y() {
  _has_bits_[0] |= 0x00000002u;
}
inline void Message_Frame_Point::clear_has_y() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void Message_Frame_Point::clear_y() {
  y_ = 0;
  clear_has_y();
}
inline float Message_Frame_Point::y() const {
  // @@protoc_insertion_point(field_get:Message.Frame.Point.y)
  return y_;
}
inline void Message_Frame_Point::set_y(float value) {
  set_has_y();
  y_ = value;
  // @@protoc_insertion_point(field_set:Message.Frame.Point.y)
}

// required float z = 3;
inline bool Message_Frame_Point::has_z() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void Message_Frame_Point::set_has_z() {
  _has_bits_[0] |= 0x00000004u;
}
inline void Message_Frame_Point::clear_has_z() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void Message_Frame_Point::clear_z() {
  z_ = 0;
  clear_has_z();
}
inline float Message_Frame_Point::z() const {
  // @@protoc_insertion_point(field_get:Message.Frame.Point.z)
  return z_;
}
inline void Message_Frame_Point::set_z(float value) {
  set_has_z();
  z_ = value;
  // @@protoc_insertion_point(field_set:Message.Frame.Point.z)
}

// required uint32 r = 4;
inline bool Message_Frame_Point::has_r() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void Message_Frame_Point::set_has_r() {
  _has_bits_[0] |= 0x00000008u;
}
inline void Message_Frame_Point::clear_has_r() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void Message_Frame_Point::clear_r() {
  r_ = 0u;
  clear_has_r();
}
inline ::google::protobuf::uint32 Message_Frame_Point::r() const {
  // @@protoc_insertion_point(field_get:Message.Frame.Point.r)
  return r_;
}
inline void Message_Frame_Point::set_r(::google::protobuf::uint32 value) {
  set_has_r();
  r_ = value;
  // @@protoc_insertion_point(field_set:Message.Frame.Point.r)
}

// required uint32 g = 5;
inline bool Message_Frame_Point::has_g() const {
  return (_has_bits_[0] & 0x00000010u) != 0;
}
inline void Message_Frame_Point::set_has_g() {
  _has_bits_[0] |= 0x00000010u;
}
inline void Message_Frame_Point::clear_has_g() {
  _has_bits_[0] &= ~0x00000010u;
}
inline void Message_Frame_Point::clear_g() {
  g_ = 0u;
  clear_has_g();
}
inline ::google::protobuf::uint32 Message_Frame_Point::g() const {
  // @@protoc_insertion_point(field_get:Message.Frame.Point.g)
  return g_;
}
inline void Message_Frame_Point::set_g(::google::protobuf::uint32 value) {
  set_has_g();
  g_ = value;
  // @@protoc_insertion_point(field_set:Message.Frame.Point.g)
}

// required uint32 b = 6;
inline bool Message_Frame_Point::has_b() const {
  return (_has_bits_[0] & 0x00000020u) != 0;
}
inline void Message_Frame_Point::set_has_b() {
  _has_bits_[0] |= 0x00000020u;
}
inline void Message_Frame_Point::clear_has_b() {
  _has_bits_[0] &= ~0x00000020u;
}
inline void Message_Frame_Point::clear_b() {
  b_ = 0u;
  clear_has_b();
}
inline ::google::protobuf::uint32 Message_Frame_Point::b() const {
  // @@protoc_insertion_point(field_get:Message.Frame.Point.b)
  return b_;
}
inline void Message_Frame_Point::set_b(::google::protobuf::uint32 value) {
  set_has_b();
  b_ = value;
  // @@protoc_insertion_point(field_set:Message.Frame.Point.b)
}

// -------------------------------------------------------------------

// Message_Frame

// repeated .Message.Frame.Point points = 1;
inline int Message_Frame::points_size() const {
  return points_.size();
}
inline void Message_Frame::clear_points() {
  points_.Clear();
}
inline const ::Message_Frame_Point& Message_Frame::points(int index) const {
  // @@protoc_insertion_point(field_get:Message.Frame.points)
  return points_.Get(index);
}
inline ::Message_Frame_Point* Message_Frame::mutable_points(int index) {
  // @@protoc_insertion_point(field_mutable:Message.Frame.points)
  return points_.Mutable(index);
}
inline ::Message_Frame_Point* Message_Frame::add_points() {
  // @@protoc_insertion_point(field_add:Message.Frame.points)
  return points_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::Message_Frame_Point >&
Message_Frame::points() const {
  // @@protoc_insertion_point(field_list:Message.Frame.points)
  return points_;
}
inline ::google::protobuf::RepeatedPtrField< ::Message_Frame_Point >*
Message_Frame::mutable_points() {
  // @@protoc_insertion_point(field_mutable_list:Message.Frame.points)
  return &points_;
}

// required float timestamp = 2;
inline bool Message_Frame::has_timestamp() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void Message_Frame::set_has_timestamp() {
  _has_bits_[0] |= 0x00000002u;
}
inline void Message_Frame::clear_has_timestamp() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void Message_Frame::clear_timestamp() {
  timestamp_ = 0;
  clear_has_timestamp();
}
inline float Message_Frame::timestamp() const {
  // @@protoc_insertion_point(field_get:Message.Frame.timestamp)
  return timestamp_;
}
inline void Message_Frame::set_timestamp(float value) {
  set_has_timestamp();
  timestamp_ = value;
  // @@protoc_insertion_point(field_set:Message.Frame.timestamp)
}

// -------------------------------------------------------------------

// Message

// repeated .Message.Frame frames = 1;
inline int Message::frames_size() const {
  return frames_.size();
}
inline void Message::clear_frames() {
  frames_.Clear();
}
inline const ::Message_Frame& Message::frames(int index) const {
  // @@protoc_insertion_point(field_get:Message.frames)
  return frames_.Get(index);
}
inline ::Message_Frame* Message::mutable_frames(int index) {
  // @@protoc_insertion_point(field_mutable:Message.frames)
  return frames_.Mutable(index);
}
inline ::Message_Frame* Message::add_frames() {
  // @@protoc_insertion_point(field_add:Message.frames)
  return frames_.Add();
}
inline const ::google::protobuf::RepeatedPtrField< ::Message_Frame >&
Message::frames() const {
  // @@protoc_insertion_point(field_list:Message.frames)
  return frames_;
}
inline ::google::protobuf::RepeatedPtrField< ::Message_Frame >*
Message::mutable_frames() {
  // @@protoc_insertion_point(field_mutable_list:Message.frames)
  return &frames_;
}


// @@protoc_insertion_point(namespace_scope)

#ifndef SWIG
namespace google {
namespace protobuf {


}  // namespace google
}  // namespace protobuf
#endif  // SWIG

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_message_2eproto__INCLUDED
