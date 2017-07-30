// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import <ProtocolBuffers/ProtocolBuffers.h>

// @@protoc_insertion_point(imports)

@class Message;
@class MessageBuilder;
@class MessageFrame;
@class MessageFrameBuilder;
@class MessageFramePoint;
@class MessageFramePointBuilder;



@interface MessageRoot : NSObject {
}
+ (PBExtensionRegistry*) extensionRegistry;
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry;
@end

#define Message_frames @"frames"
@interface Message : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  NSMutableArray * framesArray;
}
@property (readonly, strong) NSArray<MessageFrame*> * frames;
- (MessageFrame*)framesAtIndex:(NSUInteger)index;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (MessageBuilder*) builder;
+ (MessageBuilder*) builder;
+ (MessageBuilder*) builderWithPrototype:(Message*) prototype;
- (MessageBuilder*) toBuilder;

+ (Message*) parseFromData:(NSData*) data;
+ (Message*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (Message*) parseFromInputStream:(NSInputStream*) input;
+ (Message*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (Message*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (Message*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

#define Frame_points @"points"
#define Frame_timestamp @"timestamp"
@interface MessageFrame : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasTimestamp_:1;
  Float32 timestamp;
  NSMutableArray * pointsArray;
}
- (BOOL) hasTimestamp;
@property (readonly, strong) NSArray<MessageFramePoint*> * points;
@property (readonly) Float32 timestamp;
- (MessageFramePoint*)pointsAtIndex:(NSUInteger)index;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (MessageFrameBuilder*) builder;
+ (MessageFrameBuilder*) builder;
+ (MessageFrameBuilder*) builderWithPrototype:(MessageFrame*) prototype;
- (MessageFrameBuilder*) toBuilder;

+ (MessageFrame*) parseFromData:(NSData*) data;
+ (MessageFrame*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (MessageFrame*) parseFromInputStream:(NSInputStream*) input;
+ (MessageFrame*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (MessageFrame*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (MessageFrame*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

#define Point_x @"x"
#define Point_y @"y"
#define Point_z @"z"
#define Point_r @"r"
#define Point_g @"g"
#define Point_b @"b"
@interface MessageFramePoint : PBGeneratedMessage<GeneratedMessageProtocol> {
@private
  BOOL hasX_:1;
  BOOL hasY_:1;
  BOOL hasZ_:1;
  BOOL hasR_:1;
  BOOL hasG_:1;
  BOOL hasB_:1;
  Float32 x;
  Float32 y;
  Float32 z;
  UInt32 r;
  UInt32 g;
  UInt32 b;
}
- (BOOL) hasX;
- (BOOL) hasY;
- (BOOL) hasZ;
- (BOOL) hasR;
- (BOOL) hasG;
- (BOOL) hasB;
@property (readonly) Float32 x;
@property (readonly) Float32 y;
@property (readonly) Float32 z;
@property (readonly) UInt32 r;
@property (readonly) UInt32 g;
@property (readonly) UInt32 b;

+ (instancetype) defaultInstance;
- (instancetype) defaultInstance;

- (BOOL) isInitialized;
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output;
- (MessageFramePointBuilder*) builder;
+ (MessageFramePointBuilder*) builder;
+ (MessageFramePointBuilder*) builderWithPrototype:(MessageFramePoint*) prototype;
- (MessageFramePointBuilder*) toBuilder;

+ (MessageFramePoint*) parseFromData:(NSData*) data;
+ (MessageFramePoint*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (MessageFramePoint*) parseFromInputStream:(NSInputStream*) input;
+ (MessageFramePoint*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
+ (MessageFramePoint*) parseFromCodedInputStream:(PBCodedInputStream*) input;
+ (MessageFramePoint*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;
@end

@interface MessageFramePointBuilder : PBGeneratedMessageBuilder {
@private
  MessageFramePoint* resultPoint;
}

- (MessageFramePoint*) defaultInstance;

- (MessageFramePointBuilder*) clear;
- (MessageFramePointBuilder*) clone;

- (MessageFramePoint*) build;
- (MessageFramePoint*) buildPartial;

- (MessageFramePointBuilder*) mergeFrom:(MessageFramePoint*) other;
- (MessageFramePointBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (MessageFramePointBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (BOOL) hasX;
- (Float32) x;
- (MessageFramePointBuilder*) setX:(Float32) value;
- (MessageFramePointBuilder*) clearX;

- (BOOL) hasY;
- (Float32) y;
- (MessageFramePointBuilder*) setY:(Float32) value;
- (MessageFramePointBuilder*) clearY;

- (BOOL) hasZ;
- (Float32) z;
- (MessageFramePointBuilder*) setZ:(Float32) value;
- (MessageFramePointBuilder*) clearZ;

- (BOOL) hasR;
- (UInt32) r;
- (MessageFramePointBuilder*) setR:(UInt32) value;
- (MessageFramePointBuilder*) clearR;

- (BOOL) hasG;
- (UInt32) g;
- (MessageFramePointBuilder*) setG:(UInt32) value;
- (MessageFramePointBuilder*) clearG;

- (BOOL) hasB;
- (UInt32) b;
- (MessageFramePointBuilder*) setB:(UInt32) value;
- (MessageFramePointBuilder*) clearB;
@end

@interface MessageFrameBuilder : PBGeneratedMessageBuilder {
@private
  MessageFrame* resultFrame;
}

- (MessageFrame*) defaultInstance;

- (MessageFrameBuilder*) clear;
- (MessageFrameBuilder*) clone;

- (MessageFrame*) build;
- (MessageFrame*) buildPartial;

- (MessageFrameBuilder*) mergeFrom:(MessageFrame*) other;
- (MessageFrameBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (MessageFrameBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (NSMutableArray<MessageFramePoint*> *)points;
- (MessageFramePoint*)pointsAtIndex:(NSUInteger)index;
- (MessageFrameBuilder *)addPoints:(MessageFramePoint*)value;
- (MessageFrameBuilder *)setPointsArray:(NSArray<MessageFramePoint*> *)array;
- (MessageFrameBuilder *)clearPoints;

- (BOOL) hasTimestamp;
- (Float32) timestamp;
- (MessageFrameBuilder*) setTimestamp:(Float32) value;
- (MessageFrameBuilder*) clearTimestamp;
@end

@interface MessageBuilder : PBGeneratedMessageBuilder {
@private
  Message* resultMessage;
}

- (Message*) defaultInstance;

- (MessageBuilder*) clear;
- (MessageBuilder*) clone;

- (Message*) build;
- (Message*) buildPartial;

- (MessageBuilder*) mergeFrom:(Message*) other;
- (MessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input;
- (MessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry;

- (NSMutableArray<MessageFrame*> *)frames;
- (MessageFrame*)framesAtIndex:(NSUInteger)index;
- (MessageBuilder *)addFrames:(MessageFrame*)value;
- (MessageBuilder *)setFramesArray:(NSArray<MessageFrame*> *)array;
- (MessageBuilder *)clearFrames;
@end


// @@protoc_insertion_point(global_scope)
