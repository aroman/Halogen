// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Message.pb.h"
// @@protoc_insertion_point(imports)

@implementation MessageRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [MessageRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface Message ()
@property (strong) NSMutableArray<MessageFrame*> * framesArray;
@end

@implementation Message

@synthesize framesArray;
@dynamic frames;
- (instancetype) init {
  if ((self = [super init])) {
  }
  return self;
}
static Message* defaultMessageInstance = nil;
+ (void) initialize {
  if (self == [Message class]) {
    defaultMessageInstance = [[Message alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultMessageInstance;
}
- (instancetype) defaultInstance {
  return defaultMessageInstance;
}
- (NSArray<MessageFrame*> *)frames {
  return framesArray;
}
- (MessageFrame*)framesAtIndex:(NSUInteger)index {
  return [framesArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  __block BOOL isInitframes = YES;
   [self.frames enumerateObjectsUsingBlock:^(MessageFrame *element, NSUInteger idx, BOOL *stop) {
    if (!element.isInitialized) {
      isInitframes = NO;
      *stop = YES;
    }
  }];
  if (!isInitframes) return isInitframes;
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  [self.framesArray enumerateObjectsUsingBlock:^(MessageFrame *element, NSUInteger idx, BOOL *stop) {
    [output writeMessage:1 value:element];
  }];
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  [self.framesArray enumerateObjectsUsingBlock:^(MessageFrame *element, NSUInteger idx, BOOL *stop) {
    size_ += computeMessageSize(1, element);
  }];
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (Message*) parseFromData:(NSData*) data {
  return (Message*)[[[Message builder] mergeFromData:data] build];
}
+ (Message*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Message*)[[[Message builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (Message*) parseFromInputStream:(NSInputStream*) input {
  return (Message*)[[[Message builder] mergeFromInputStream:input] build];
}
+ (Message*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Message*)[[[Message builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (Message*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (Message*)[[[Message builder] mergeFromCodedInputStream:input] build];
}
+ (Message*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Message*)[[[Message builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (MessageBuilder*) builder {
  return [[MessageBuilder alloc] init];
}
+ (MessageBuilder*) builderWithPrototype:(Message*) prototype {
  return [[Message builder] mergeFrom:prototype];
}
- (MessageBuilder*) builder {
  return [Message builder];
}
- (MessageBuilder*) toBuilder {
  return [Message builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  [self.framesArray enumerateObjectsUsingBlock:^(MessageFrame *element, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@ {\n", indent, @"frames"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }];
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  for (MessageFrame* element in self.framesArray) {
    NSMutableDictionary *elementDictionary = [NSMutableDictionary dictionary];
    [element storeInDictionary:elementDictionary];
    [dictionary setObject:[NSDictionary dictionaryWithDictionary:elementDictionary] forKey:@"frames"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[Message class]]) {
    return NO;
  }
  Message *otherMessage = other;
  return
      [self.framesArray isEqualToArray:otherMessage.framesArray] &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  [self.framesArray enumerateObjectsUsingBlock:^(MessageFrame *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface MessageFrame ()
@property (strong) NSMutableArray<MessageFramePoint*> * pointsArray;
@property Float32 timestamp;
@end

@implementation MessageFrame

@synthesize pointsArray;
@dynamic points;
- (BOOL) hasTimestamp {
  return !!hasTimestamp_;
}
- (void) setHasTimestamp:(BOOL) _value_ {
  hasTimestamp_ = !!_value_;
}
@synthesize timestamp;
- (instancetype) init {
  if ((self = [super init])) {
    self.timestamp = 0;
  }
  return self;
}
static MessageFrame* defaultMessageFrameInstance = nil;
+ (void) initialize {
  if (self == [MessageFrame class]) {
    defaultMessageFrameInstance = [[MessageFrame alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultMessageFrameInstance;
}
- (instancetype) defaultInstance {
  return defaultMessageFrameInstance;
}
- (NSArray<MessageFramePoint*> *)points {
  return pointsArray;
}
- (MessageFramePoint*)pointsAtIndex:(NSUInteger)index {
  return [pointsArray objectAtIndex:index];
}
- (BOOL) isInitialized {
  if (!self.hasTimestamp) {
    return NO;
  }
  __block BOOL isInitpoints = YES;
   [self.points enumerateObjectsUsingBlock:^(MessageFramePoint *element, NSUInteger idx, BOOL *stop) {
    if (!element.isInitialized) {
      isInitpoints = NO;
      *stop = YES;
    }
  }];
  if (!isInitpoints) return isInitpoints;
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  [self.pointsArray enumerateObjectsUsingBlock:^(MessageFramePoint *element, NSUInteger idx, BOOL *stop) {
    [output writeMessage:1 value:element];
  }];
  if (self.hasTimestamp) {
    [output writeFloat:2 value:self.timestamp];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  [self.pointsArray enumerateObjectsUsingBlock:^(MessageFramePoint *element, NSUInteger idx, BOOL *stop) {
    size_ += computeMessageSize(1, element);
  }];
  if (self.hasTimestamp) {
    size_ += computeFloatSize(2, self.timestamp);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (MessageFrame*) parseFromData:(NSData*) data {
  return (MessageFrame*)[[[MessageFrame builder] mergeFromData:data] build];
}
+ (MessageFrame*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (MessageFrame*)[[[MessageFrame builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (MessageFrame*) parseFromInputStream:(NSInputStream*) input {
  return (MessageFrame*)[[[MessageFrame builder] mergeFromInputStream:input] build];
}
+ (MessageFrame*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (MessageFrame*)[[[MessageFrame builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (MessageFrame*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (MessageFrame*)[[[MessageFrame builder] mergeFromCodedInputStream:input] build];
}
+ (MessageFrame*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (MessageFrame*)[[[MessageFrame builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (MessageFrameBuilder*) builder {
  return [[MessageFrameBuilder alloc] init];
}
+ (MessageFrameBuilder*) builderWithPrototype:(MessageFrame*) prototype {
  return [[MessageFrame builder] mergeFrom:prototype];
}
- (MessageFrameBuilder*) builder {
  return [MessageFrame builder];
}
- (MessageFrameBuilder*) toBuilder {
  return [MessageFrame builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  [self.pointsArray enumerateObjectsUsingBlock:^(MessageFramePoint *element, NSUInteger idx, BOOL *stop) {
    [output appendFormat:@"%@%@ {\n", indent, @"points"];
    [element writeDescriptionTo:output
                     withIndent:[NSString stringWithFormat:@"%@  ", indent]];
    [output appendFormat:@"%@}\n", indent];
  }];
  if (self.hasTimestamp) {
    [output appendFormat:@"%@%@: %@\n", indent, @"timestamp", [NSNumber numberWithFloat:self.timestamp]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  for (MessageFramePoint* element in self.pointsArray) {
    NSMutableDictionary *elementDictionary = [NSMutableDictionary dictionary];
    [element storeInDictionary:elementDictionary];
    [dictionary setObject:[NSDictionary dictionaryWithDictionary:elementDictionary] forKey:@"points"];
  }
  if (self.hasTimestamp) {
    [dictionary setObject: [NSNumber numberWithFloat:self.timestamp] forKey: @"timestamp"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[MessageFrame class]]) {
    return NO;
  }
  MessageFrame *otherMessage = other;
  return
      [self.pointsArray isEqualToArray:otherMessage.pointsArray] &&
      self.hasTimestamp == otherMessage.hasTimestamp &&
      (!self.hasTimestamp || self.timestamp == otherMessage.timestamp) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  [self.pointsArray enumerateObjectsUsingBlock:^(MessageFramePoint *element, NSUInteger idx, BOOL *stop) {
    hashCode = hashCode * 31 + [element hash];
  }];
  if (self.hasTimestamp) {
    hashCode = hashCode * 31 + [[NSNumber numberWithFloat:self.timestamp] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface MessageFramePoint ()
@property Float32 x;
@property Float32 y;
@property Float32 z;
@property UInt32 r;
@property UInt32 g;
@property UInt32 b;
@end

@implementation MessageFramePoint

- (BOOL) hasX {
  return !!hasX_;
}
- (void) setHasX:(BOOL) _value_ {
  hasX_ = !!_value_;
}
@synthesize x;
- (BOOL) hasY {
  return !!hasY_;
}
- (void) setHasY:(BOOL) _value_ {
  hasY_ = !!_value_;
}
@synthesize y;
- (BOOL) hasZ {
  return !!hasZ_;
}
- (void) setHasZ:(BOOL) _value_ {
  hasZ_ = !!_value_;
}
@synthesize z;
- (BOOL) hasR {
  return !!hasR_;
}
- (void) setHasR:(BOOL) _value_ {
  hasR_ = !!_value_;
}
@synthesize r;
- (BOOL) hasG {
  return !!hasG_;
}
- (void) setHasG:(BOOL) _value_ {
  hasG_ = !!_value_;
}
@synthesize g;
- (BOOL) hasB {
  return !!hasB_;
}
- (void) setHasB:(BOOL) _value_ {
  hasB_ = !!_value_;
}
@synthesize b;
- (instancetype) init {
  if ((self = [super init])) {
    self.x = 0;
    self.y = 0;
    self.z = 0;
    self.r = 0;
    self.g = 0;
    self.b = 0;
  }
  return self;
}
static MessageFramePoint* defaultMessageFramePointInstance = nil;
+ (void) initialize {
  if (self == [MessageFramePoint class]) {
    defaultMessageFramePointInstance = [[MessageFramePoint alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultMessageFramePointInstance;
}
- (instancetype) defaultInstance {
  return defaultMessageFramePointInstance;
}
- (BOOL) isInitialized {
  if (!self.hasX) {
    return NO;
  }
  if (!self.hasY) {
    return NO;
  }
  if (!self.hasZ) {
    return NO;
  }
  if (!self.hasR) {
    return NO;
  }
  if (!self.hasG) {
    return NO;
  }
  if (!self.hasB) {
    return NO;
  }
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasX) {
    [output writeFloat:1 value:self.x];
  }
  if (self.hasY) {
    [output writeFloat:2 value:self.y];
  }
  if (self.hasZ) {
    [output writeFloat:3 value:self.z];
  }
  if (self.hasR) {
    [output writeUInt32:4 value:self.r];
  }
  if (self.hasG) {
    [output writeUInt32:5 value:self.g];
  }
  if (self.hasB) {
    [output writeUInt32:6 value:self.b];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasX) {
    size_ += computeFloatSize(1, self.x);
  }
  if (self.hasY) {
    size_ += computeFloatSize(2, self.y);
  }
  if (self.hasZ) {
    size_ += computeFloatSize(3, self.z);
  }
  if (self.hasR) {
    size_ += computeUInt32Size(4, self.r);
  }
  if (self.hasG) {
    size_ += computeUInt32Size(5, self.g);
  }
  if (self.hasB) {
    size_ += computeUInt32Size(6, self.b);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (MessageFramePoint*) parseFromData:(NSData*) data {
  return (MessageFramePoint*)[[[MessageFramePoint builder] mergeFromData:data] build];
}
+ (MessageFramePoint*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (MessageFramePoint*)[[[MessageFramePoint builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (MessageFramePoint*) parseFromInputStream:(NSInputStream*) input {
  return (MessageFramePoint*)[[[MessageFramePoint builder] mergeFromInputStream:input] build];
}
+ (MessageFramePoint*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (MessageFramePoint*)[[[MessageFramePoint builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (MessageFramePoint*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (MessageFramePoint*)[[[MessageFramePoint builder] mergeFromCodedInputStream:input] build];
}
+ (MessageFramePoint*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (MessageFramePoint*)[[[MessageFramePoint builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (MessageFramePointBuilder*) builder {
  return [[MessageFramePointBuilder alloc] init];
}
+ (MessageFramePointBuilder*) builderWithPrototype:(MessageFramePoint*) prototype {
  return [[MessageFramePoint builder] mergeFrom:prototype];
}
- (MessageFramePointBuilder*) builder {
  return [MessageFramePoint builder];
}
- (MessageFramePointBuilder*) toBuilder {
  return [MessageFramePoint builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasX) {
    [output appendFormat:@"%@%@: %@\n", indent, @"x", [NSNumber numberWithFloat:self.x]];
  }
  if (self.hasY) {
    [output appendFormat:@"%@%@: %@\n", indent, @"y", [NSNumber numberWithFloat:self.y]];
  }
  if (self.hasZ) {
    [output appendFormat:@"%@%@: %@\n", indent, @"z", [NSNumber numberWithFloat:self.z]];
  }
  if (self.hasR) {
    [output appendFormat:@"%@%@: %@\n", indent, @"r", [NSNumber numberWithInteger:self.r]];
  }
  if (self.hasG) {
    [output appendFormat:@"%@%@: %@\n", indent, @"g", [NSNumber numberWithInteger:self.g]];
  }
  if (self.hasB) {
    [output appendFormat:@"%@%@: %@\n", indent, @"b", [NSNumber numberWithInteger:self.b]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasX) {
    [dictionary setObject: [NSNumber numberWithFloat:self.x] forKey: @"x"];
  }
  if (self.hasY) {
    [dictionary setObject: [NSNumber numberWithFloat:self.y] forKey: @"y"];
  }
  if (self.hasZ) {
    [dictionary setObject: [NSNumber numberWithFloat:self.z] forKey: @"z"];
  }
  if (self.hasR) {
    [dictionary setObject: [NSNumber numberWithInteger:self.r] forKey: @"r"];
  }
  if (self.hasG) {
    [dictionary setObject: [NSNumber numberWithInteger:self.g] forKey: @"g"];
  }
  if (self.hasB) {
    [dictionary setObject: [NSNumber numberWithInteger:self.b] forKey: @"b"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[MessageFramePoint class]]) {
    return NO;
  }
  MessageFramePoint *otherMessage = other;
  return
      self.hasX == otherMessage.hasX &&
      (!self.hasX || self.x == otherMessage.x) &&
      self.hasY == otherMessage.hasY &&
      (!self.hasY || self.y == otherMessage.y) &&
      self.hasZ == otherMessage.hasZ &&
      (!self.hasZ || self.z == otherMessage.z) &&
      self.hasR == otherMessage.hasR &&
      (!self.hasR || self.r == otherMessage.r) &&
      self.hasG == otherMessage.hasG &&
      (!self.hasG || self.g == otherMessage.g) &&
      self.hasB == otherMessage.hasB &&
      (!self.hasB || self.b == otherMessage.b) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasX) {
    hashCode = hashCode * 31 + [[NSNumber numberWithFloat:self.x] hash];
  }
  if (self.hasY) {
    hashCode = hashCode * 31 + [[NSNumber numberWithFloat:self.y] hash];
  }
  if (self.hasZ) {
    hashCode = hashCode * 31 + [[NSNumber numberWithFloat:self.z] hash];
  }
  if (self.hasR) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.r] hash];
  }
  if (self.hasG) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.g] hash];
  }
  if (self.hasB) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.b] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface MessageFramePointBuilder()
@property (strong) MessageFramePoint* resultPoint;
@end

@implementation MessageFramePointBuilder
@synthesize resultPoint;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultPoint = [[MessageFramePoint alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultPoint;
}
- (MessageFramePointBuilder*) clear {
  self.resultPoint = [[MessageFramePoint alloc] init];
  return self;
}
- (MessageFramePointBuilder*) clone {
  return [MessageFramePoint builderWithPrototype:resultPoint];
}
- (MessageFramePoint*) defaultInstance {
  return [MessageFramePoint defaultInstance];
}
- (MessageFramePoint*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (MessageFramePoint*) buildPartial {
  MessageFramePoint* returnMe = resultPoint;
  self.resultPoint = nil;
  return returnMe;
}
- (MessageFramePointBuilder*) mergeFrom:(MessageFramePoint*) other {
  if (other == [MessageFramePoint defaultInstance]) {
    return self;
  }
  if (other.hasX) {
    [self setX:other.x];
  }
  if (other.hasY) {
    [self setY:other.y];
  }
  if (other.hasZ) {
    [self setZ:other.z];
  }
  if (other.hasR) {
    [self setR:other.r];
  }
  if (other.hasG) {
    [self setG:other.g];
  }
  if (other.hasB) {
    [self setB:other.b];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (MessageFramePointBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (MessageFramePointBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 13: {
        [self setX:[input readFloat]];
        break;
      }
      case 21: {
        [self setY:[input readFloat]];
        break;
      }
      case 29: {
        [self setZ:[input readFloat]];
        break;
      }
      case 32: {
        [self setR:[input readUInt32]];
        break;
      }
      case 40: {
        [self setG:[input readUInt32]];
        break;
      }
      case 48: {
        [self setB:[input readUInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasX {
  return resultPoint.hasX;
}
- (Float32) x {
  return resultPoint.x;
}
- (MessageFramePointBuilder*) setX:(Float32) value {
  resultPoint.hasX = YES;
  resultPoint.x = value;
  return self;
}
- (MessageFramePointBuilder*) clearX {
  resultPoint.hasX = NO;
  resultPoint.x = 0;
  return self;
}
- (BOOL) hasY {
  return resultPoint.hasY;
}
- (Float32) y {
  return resultPoint.y;
}
- (MessageFramePointBuilder*) setY:(Float32) value {
  resultPoint.hasY = YES;
  resultPoint.y = value;
  return self;
}
- (MessageFramePointBuilder*) clearY {
  resultPoint.hasY = NO;
  resultPoint.y = 0;
  return self;
}
- (BOOL) hasZ {
  return resultPoint.hasZ;
}
- (Float32) z {
  return resultPoint.z;
}
- (MessageFramePointBuilder*) setZ:(Float32) value {
  resultPoint.hasZ = YES;
  resultPoint.z = value;
  return self;
}
- (MessageFramePointBuilder*) clearZ {
  resultPoint.hasZ = NO;
  resultPoint.z = 0;
  return self;
}
- (BOOL) hasR {
  return resultPoint.hasR;
}
- (UInt32) r {
  return resultPoint.r;
}
- (MessageFramePointBuilder*) setR:(UInt32) value {
  resultPoint.hasR = YES;
  resultPoint.r = value;
  return self;
}
- (MessageFramePointBuilder*) clearR {
  resultPoint.hasR = NO;
  resultPoint.r = 0;
  return self;
}
- (BOOL) hasG {
  return resultPoint.hasG;
}
- (UInt32) g {
  return resultPoint.g;
}
- (MessageFramePointBuilder*) setG:(UInt32) value {
  resultPoint.hasG = YES;
  resultPoint.g = value;
  return self;
}
- (MessageFramePointBuilder*) clearG {
  resultPoint.hasG = NO;
  resultPoint.g = 0;
  return self;
}
- (BOOL) hasB {
  return resultPoint.hasB;
}
- (UInt32) b {
  return resultPoint.b;
}
- (MessageFramePointBuilder*) setB:(UInt32) value {
  resultPoint.hasB = YES;
  resultPoint.b = value;
  return self;
}
- (MessageFramePointBuilder*) clearB {
  resultPoint.hasB = NO;
  resultPoint.b = 0;
  return self;
}
@end

@interface MessageFrameBuilder()
@property (strong) MessageFrame* resultFrame;
@end

@implementation MessageFrameBuilder
@synthesize resultFrame;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultFrame = [[MessageFrame alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultFrame;
}
- (MessageFrameBuilder*) clear {
  self.resultFrame = [[MessageFrame alloc] init];
  return self;
}
- (MessageFrameBuilder*) clone {
  return [MessageFrame builderWithPrototype:resultFrame];
}
- (MessageFrame*) defaultInstance {
  return [MessageFrame defaultInstance];
}
- (MessageFrame*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (MessageFrame*) buildPartial {
  MessageFrame* returnMe = resultFrame;
  self.resultFrame = nil;
  return returnMe;
}
- (MessageFrameBuilder*) mergeFrom:(MessageFrame*) other {
  if (other == [MessageFrame defaultInstance]) {
    return self;
  }
  if (other.pointsArray.count > 0) {
    if (resultFrame.pointsArray == nil) {
      resultFrame.pointsArray = [[NSMutableArray alloc] initWithArray:other.pointsArray];
    } else {
      [resultFrame.pointsArray addObjectsFromArray:other.pointsArray];
    }
  }
  if (other.hasTimestamp) {
    [self setTimestamp:other.timestamp];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (MessageFrameBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (MessageFrameBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        MessageFramePointBuilder* subBuilder = [MessageFramePoint builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addPoints:[subBuilder buildPartial]];
        break;
      }
      case 21: {
        [self setTimestamp:[input readFloat]];
        break;
      }
    }
  }
}
- (NSMutableArray<MessageFramePoint*> *)points {
  return resultFrame.pointsArray;
}
- (MessageFramePoint*)pointsAtIndex:(NSUInteger)index {
  return [resultFrame pointsAtIndex:index];
}
- (MessageFrameBuilder *)addPoints:(MessageFramePoint*)value {
  if (resultFrame.pointsArray == nil) {
    resultFrame.pointsArray = [[NSMutableArray alloc]init];
  }
  [resultFrame.pointsArray addObject:value];
  return self;
}
- (MessageFrameBuilder *)setPointsArray:(NSArray<MessageFramePoint*> *)array {
  resultFrame.pointsArray = [[NSMutableArray alloc]initWithArray:array];
  return self;
}
- (MessageFrameBuilder *)clearPoints {
  resultFrame.pointsArray = nil;
  return self;
}
- (BOOL) hasTimestamp {
  return resultFrame.hasTimestamp;
}
- (Float32) timestamp {
  return resultFrame.timestamp;
}
- (MessageFrameBuilder*) setTimestamp:(Float32) value {
  resultFrame.hasTimestamp = YES;
  resultFrame.timestamp = value;
  return self;
}
- (MessageFrameBuilder*) clearTimestamp {
  resultFrame.hasTimestamp = NO;
  resultFrame.timestamp = 0;
  return self;
}
@end

@interface MessageBuilder()
@property (strong) Message* resultMessage;
@end

@implementation MessageBuilder
@synthesize resultMessage;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultMessage = [[Message alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultMessage;
}
- (MessageBuilder*) clear {
  self.resultMessage = [[Message alloc] init];
  return self;
}
- (MessageBuilder*) clone {
  return [Message builderWithPrototype:resultMessage];
}
- (Message*) defaultInstance {
  return [Message defaultInstance];
}
- (Message*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (Message*) buildPartial {
  Message* returnMe = resultMessage;
  self.resultMessage = nil;
  return returnMe;
}
- (MessageBuilder*) mergeFrom:(Message*) other {
  if (other == [Message defaultInstance]) {
    return self;
  }
  if (other.framesArray.count > 0) {
    if (resultMessage.framesArray == nil) {
      resultMessage.framesArray = [[NSMutableArray alloc] initWithArray:other.framesArray];
    } else {
      [resultMessage.framesArray addObjectsFromArray:other.framesArray];
    }
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (MessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (MessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        MessageFrameBuilder* subBuilder = [MessageFrame builder];
        [input readMessage:subBuilder extensionRegistry:extensionRegistry];
        [self addFrames:[subBuilder buildPartial]];
        break;
      }
    }
  }
}
- (NSMutableArray<MessageFrame*> *)frames {
  return resultMessage.framesArray;
}
- (MessageFrame*)framesAtIndex:(NSUInteger)index {
  return [resultMessage framesAtIndex:index];
}
- (MessageBuilder *)addFrames:(MessageFrame*)value {
  if (resultMessage.framesArray == nil) {
    resultMessage.framesArray = [[NSMutableArray alloc]init];
  }
  [resultMessage.framesArray addObject:value];
  return self;
}
- (MessageBuilder *)setFramesArray:(NSArray<MessageFrame*> *)array {
  resultMessage.framesArray = [[NSMutableArray alloc]initWithArray:array];
  return self;
}
- (MessageBuilder *)clearFrames {
  resultMessage.framesArray = nil;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
