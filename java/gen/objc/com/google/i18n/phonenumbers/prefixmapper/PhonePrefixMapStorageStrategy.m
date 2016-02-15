//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/libphonenumber/java/internal/prefixmapper/src/main/java/com/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "com/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy.h"
#include "java/io/IOException.h"
#include "java/io/ObjectInput.h"
#include "java/io/ObjectOutput.h"
#include "java/lang/StringBuilder.h"
#include "java/util/SortedMap.h"
#include "java/util/TreeSet.h"

@implementation ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy

- (jint)getPrefixWithInt:(jint)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)getDescriptionWithInt:(jint)index {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)readFromSortedMapWithJavaUtilSortedMap:(id<JavaUtilSortedMap>)sortedPhonePrefixMap {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)readExternalWithJavaIoObjectInput:(id<JavaIoObjectInput>)objectInput {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (void)writeExternalWithJavaIoObjectOutput:(id<JavaIoObjectOutput>)objectOutput {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
}

- (jint)getNumOfEntries {
  return numOfEntries_;
}

- (JavaUtilTreeSet *)getPossibleLengths {
  return possibleLengths_;
}

- (NSString *)description {
  JavaLangStringBuilder *output = [new_JavaLangStringBuilder_init() autorelease];
  jint numOfEntries = [self getNumOfEntries];
  for (jint i = 0; i < numOfEntries; i++) {
    [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([output appendWithInt:[self getPrefixWithInt:i]])) appendWithNSString:@"|"])) appendWithNSString:[self getDescriptionWithInt:i]])) appendWithNSString:@"\n"];
  }
  return [output description];
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)dealloc {
  RELEASE_(possibleLengths_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "getPrefixWithInt:", "getPrefix", "I", 0x401, NULL, NULL },
    { "getDescriptionWithInt:", "getDescription", "Ljava.lang.String;", 0x401, NULL, NULL },
    { "readFromSortedMapWithJavaUtilSortedMap:", "readFromSortedMap", "V", 0x401, NULL, "(Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;)V" },
    { "readExternalWithJavaIoObjectInput:", "readExternal", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "writeExternalWithJavaIoObjectOutput:", "writeExternal", "V", 0x401, "Ljava.io.IOException;", NULL },
    { "getNumOfEntries", NULL, "I", 0x1, NULL, NULL },
    { "getPossibleLengths", NULL, "Ljava.util.TreeSet;", 0x1, NULL, "()Ljava/util/TreeSet<Ljava/lang/Integer;>;" },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
    { "init", NULL, NULL, 0x0, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "numOfEntries_", NULL, 0x4, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "possibleLengths_", NULL, 0x14, "Ljava.util.TreeSet;", NULL, "Ljava/util/TreeSet<Ljava/lang/Integer;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy = { 2, "PhonePrefixMapStorageStrategy", "com.google.i18n.phonenumbers.prefixmapper", NULL, 0x400, 9, methods, 2, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy;
}

@end

void ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy_init(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy *self) {
  NSObject_init(self);
  self->numOfEntries_ = 0;
  JreStrongAssignAndConsume(&self->possibleLengths_, new_JavaUtilTreeSet_init());
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleI18nPhonenumbersPrefixmapperPhonePrefixMapStorageStrategy)
