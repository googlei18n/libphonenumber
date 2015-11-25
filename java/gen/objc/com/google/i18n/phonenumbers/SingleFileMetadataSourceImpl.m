//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/libphonenumber/java/libphonenumber/src/main/java/com/google/i18n/phonenumbers/SingleFileMetadataSourceImpl.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "com/google/i18n/phonenumbers/MetadataLoader.h"
#include "com/google/i18n/phonenumbers/MetadataManager.h"
#include "com/google/i18n/phonenumbers/PhoneNumberUtil.h"
#include "com/google/i18n/phonenumbers/SingleFileMetadataSourceImpl.h"
#include "com/google/i18n/phonenumbers/nano/Phonemetadata.h"
#include "com/google/protobuf/nano/CodedInputByteBufferNano.h"
#include "java/io/IOException.h"
#include "java/io/InputStream.h"
#include "java/io/ObjectInputStream.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/lang/RuntimeException.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/logging/Level.h"
#include "java/util/logging/Logger.h"

@interface ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl () {
 @public
  id<JavaUtilMap> regionToMetadataMap_;
  id<JavaUtilMap> countryCodeToNonGeographicalMetadataMap_;
  NSString *fileName_;
  id<ComGoogleI18nPhonenumbersMetadataLoader> metadataLoader_;
}

/**
 @brief Loads the metadata protocol buffer from the given stream and closes the stream afterwards.
 Any exceptions that occur while reading or closing the stream are ignored.
 @param source the non-null stream from which metadata is to be read.
 @return the loaded metadata protocol buffer.
 */
+ (ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadataCollection *)loadMetadataAndCloseInputWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)source;

@end

J2OBJC_FIELD_SETTER(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl, regionToMetadataMap_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl, countryCodeToNonGeographicalMetadataMap_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl, fileName_, NSString *)
J2OBJC_FIELD_SETTER(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl, metadataLoader_, id<ComGoogleI18nPhonenumbersMetadataLoader>)

static JavaUtilLoggingLogger *ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_logger_;
J2OBJC_STATIC_FIELD_GETTER(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl, logger_, JavaUtilLoggingLogger *)

static NSString *ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_META_DATA_FILE_NAME_ = @"/com/google/i18n/phonenumbers/data/SingleFilePhoneNumberMetadataProto";
J2OBJC_STATIC_FIELD_GETTER(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl, META_DATA_FILE_NAME_, NSString *)

__attribute__((unused)) static ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadataCollection *ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_loadMetadataAndCloseInputWithJavaIoObjectInputStream_(JavaIoObjectInputStream *source);

J2OBJC_INITIALIZED_DEFN(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl)

@implementation ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl

- (instancetype)initWithNSString:(NSString *)fileName
withComGoogleI18nPhonenumbersMetadataLoader:(id<ComGoogleI18nPhonenumbersMetadataLoader>)metadataLoader {
  ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithNSString_withComGoogleI18nPhonenumbersMetadataLoader_(self, fileName, metadataLoader);
  return self;
}

- (instancetype)initWithComGoogleI18nPhonenumbersMetadataLoader:(id<ComGoogleI18nPhonenumbersMetadataLoader>)metadataLoader {
  ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithComGoogleI18nPhonenumbersMetadataLoader_(self, metadataLoader);
  return self;
}

- (ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadata *)getMetadataForRegionWithNSString:(NSString *)regionCode {
  @synchronized(regionToMetadataMap_) {
    if (![((id<JavaUtilMap>) nil_chk(regionToMetadataMap_)) containsKeyWithId:regionCode]) {
      [self loadMetadataFromFile];
    }
  }
  return [regionToMetadataMap_ getWithId:regionCode];
}

- (ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadata *)getMetadataForNonGeographicalRegionWithInt:(jint)countryCallingCode {
  @synchronized(countryCodeToNonGeographicalMetadataMap_) {
    if (![((id<JavaUtilMap>) nil_chk(countryCodeToNonGeographicalMetadataMap_)) containsKeyWithId:JavaLangInteger_valueOfWithInt_(countryCallingCode)]) {
      [self loadMetadataFromFile];
    }
  }
  return [countryCodeToNonGeographicalMetadataMap_ getWithId:JavaLangInteger_valueOfWithInt_(countryCallingCode)];
}

- (void)loadMetadataFromFile {
  JavaIoInputStream *source = [((id<ComGoogleI18nPhonenumbersMetadataLoader>) nil_chk(metadataLoader_)) loadMetadataWithNSString:fileName_];
  if (source == nil) {
    [((JavaUtilLoggingLogger *) nil_chk(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_logger_)) logWithJavaUtilLoggingLevel:JavaUtilLoggingLevel_get_SEVERE_() withNSString:JreStrcat("$$", @"missing metadata: ", fileName_)];
    @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$", @"missing metadata: ", fileName_)) autorelease];
  }
  @try {
    ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadataCollection *metadataCollection = ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_loadMetadataAndCloseInputWithJavaIoObjectInputStream_([new_JavaIoObjectInputStream_initWithJavaIoInputStream_(source) autorelease]);
    IOSObjectArray *metadataList = ((ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadataCollection *) nil_chk(metadataCollection))->metadata_;
    if (((IOSObjectArray *) nil_chk(metadataList))->size_ == 0) {
      [((JavaUtilLoggingLogger *) nil_chk(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_logger_)) logWithJavaUtilLoggingLevel:JavaUtilLoggingLevel_get_SEVERE_() withNSString:JreStrcat("$$", @"empty metadata: ", fileName_)];
      @throw [new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$$", @"empty metadata: ", fileName_)) autorelease];
    }
    {
      IOSObjectArray *a__ = metadataList;
      ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadata * const *b__ = a__->buffer_;
      ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadata * const *e__ = b__ + a__->size_;
      while (b__ < e__) {
        ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadata *metadata = *b__++;
        NSString *regionCode = ((ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadata *) nil_chk(metadata))->id__;
        jint countryCallingCode = metadata->countryCode_;
        jboolean isNonGeoRegion = [((NSString *) nil_chk(ComGoogleI18nPhonenumbersPhoneNumberUtil_get_REGION_CODE_FOR_NON_GEO_ENTITY_())) isEqual:regionCode];
        if (isNonGeoRegion) {
          [((id<JavaUtilMap>) nil_chk(countryCodeToNonGeographicalMetadataMap_)) putWithId:JavaLangInteger_valueOfWithInt_(countryCallingCode) withId:metadata];
        }
        else {
          [((id<JavaUtilMap>) nil_chk(regionToMetadataMap_)) putWithId:regionCode withId:metadata];
        }
      }
    }
  }
  @catch (JavaIoIOException *e) {
    [((JavaUtilLoggingLogger *) nil_chk(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_logger_)) logWithJavaUtilLoggingLevel:JavaUtilLoggingLevel_get_SEVERE_() withNSString:JreStrcat("$$", @"cannot load/parse metadata: ", fileName_) withJavaLangThrowable:e];
    @throw [new_JavaLangRuntimeException_initWithNSString_withJavaLangThrowable_(JreStrcat("$$", @"cannot load/parse metadata: ", fileName_), e) autorelease];
  }
}

+ (ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadataCollection *)loadMetadataAndCloseInputWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)source {
  return ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_loadMetadataAndCloseInputWithJavaIoObjectInputStream_(source);
}

- (void)dealloc {
  RELEASE_(regionToMetadataMap_);
  RELEASE_(countryCodeToNonGeographicalMetadataMap_);
  RELEASE_(fileName_);
  RELEASE_(metadataLoader_);
  [super dealloc];
}

+ (void)initialize {
  if (self == [ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl class]) {
    JreStrongAssign(&ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_logger_, nil, JavaUtilLoggingLogger_getLoggerWithNSString_([ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_class_() getName]));
    J2OBJC_SET_INITIALIZED(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withComGoogleI18nPhonenumbersMetadataLoader:", "SingleFileMetadataSourceImpl", NULL, 0x1, NULL, NULL },
    { "initWithComGoogleI18nPhonenumbersMetadataLoader:", "SingleFileMetadataSourceImpl", NULL, 0x1, NULL, NULL },
    { "getMetadataForRegionWithNSString:", "getMetadataForRegion", "Lcom.google.i18n.phonenumbers.nano.Phonemetadata$PhoneMetadata;", 0x1, NULL, NULL },
    { "getMetadataForNonGeographicalRegionWithInt:", "getMetadataForNonGeographicalRegion", "Lcom.google.i18n.phonenumbers.nano.Phonemetadata$PhoneMetadata;", 0x1, NULL, NULL },
    { "loadMetadataFromFile", NULL, "V", 0x0, NULL, NULL },
    { "loadMetadataAndCloseInputWithJavaIoObjectInputStream:", "loadMetadataAndCloseInput", "Lcom.google.i18n.phonenumbers.nano.Phonemetadata$PhoneMetadataCollection;", 0xa, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "logger_", NULL, 0x1a, "Ljava.util.logging.Logger;", &ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_logger_, NULL,  },
    { "META_DATA_FILE_NAME_", NULL, 0x1a, "Ljava.lang.String;", &ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_META_DATA_FILE_NAME_, NULL,  },
    { "regionToMetadataMap_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/String;Lcom/google/i18n/phonenumbers/nano/Phonemetadata$PhoneMetadata;>;",  },
    { "countryCodeToNonGeographicalMetadataMap_", NULL, 0x12, "Ljava.util.Map;", NULL, "Ljava/util/Map<Ljava/lang/Integer;Lcom/google/i18n/phonenumbers/nano/Phonemetadata$PhoneMetadata;>;",  },
    { "fileName_", NULL, 0x12, "Ljava.lang.String;", NULL, NULL,  },
    { "metadataLoader_", NULL, 0x12, "Lcom.google.i18n.phonenumbers.MetadataLoader;", NULL, NULL,  },
  };
  static const J2ObjcClassInfo _ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl = { 2, "SingleFileMetadataSourceImpl", "com.google.i18n.phonenumbers", NULL, 0x10, 6, methods, 6, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl;
}

@end

void ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithNSString_withComGoogleI18nPhonenumbersMetadataLoader_(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl *self, NSString *fileName, id<ComGoogleI18nPhonenumbersMetadataLoader> metadataLoader) {
  NSObject_init(self);
  ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_set_regionToMetadataMap_(self, JavaUtilCollections_synchronizedMapWithJavaUtilMap_([new_JavaUtilHashMap_init() autorelease]));
  ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_set_countryCodeToNonGeographicalMetadataMap_(self, JavaUtilCollections_synchronizedMapWithJavaUtilMap_([new_JavaUtilHashMap_init() autorelease]));
  ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_set_fileName_(self, fileName);
  ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_set_metadataLoader_(self, metadataLoader);
}

ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl *new_ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithNSString_withComGoogleI18nPhonenumbersMetadataLoader_(NSString *fileName, id<ComGoogleI18nPhonenumbersMetadataLoader> metadataLoader) {
  ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl *self = [ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl alloc];
  ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithNSString_withComGoogleI18nPhonenumbersMetadataLoader_(self, fileName, metadataLoader);
  return self;
}

void ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithComGoogleI18nPhonenumbersMetadataLoader_(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl *self, id<ComGoogleI18nPhonenumbersMetadataLoader> metadataLoader) {
  ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithNSString_withComGoogleI18nPhonenumbersMetadataLoader_(self, ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_META_DATA_FILE_NAME_, metadataLoader);
}

ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl *new_ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithComGoogleI18nPhonenumbersMetadataLoader_(id<ComGoogleI18nPhonenumbersMetadataLoader> metadataLoader) {
  ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl *self = [ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl alloc];
  ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initWithComGoogleI18nPhonenumbersMetadataLoader_(self, metadataLoader);
  return self;
}

ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadataCollection *ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_loadMetadataAndCloseInputWithJavaIoObjectInputStream_(JavaIoObjectInputStream *source) {
  ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_initialize();
  jint SINGLE_FILE_BUFFER_SIZE = 256 * 1024;
  ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadataCollection *metadataCollection = [new_ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadataCollection_init() autorelease];
  @try {
    [metadataCollection mergeFromWithComGoogleProtobufNanoCodedInputByteBufferNano:ComGoogleI18nPhonenumbersMetadataManager_convertStreamToByteBufferWithJavaIoObjectInputStream_withInt_(source, SINGLE_FILE_BUFFER_SIZE)];
  }
  @catch (JavaIoIOException *e) {
    [((JavaUtilLoggingLogger *) nil_chk(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_logger_)) logWithJavaUtilLoggingLevel:JavaUtilLoggingLevel_get_WARNING_() withNSString:@"error reading input (ignored)" withJavaLangThrowable:e];
  }
  @finally {
    @try {
      [((JavaIoObjectInputStream *) nil_chk(source)) close];
    }
    @catch (JavaIoIOException *e) {
      [((JavaUtilLoggingLogger *) nil_chk(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl_logger_)) logWithJavaUtilLoggingLevel:JavaUtilLoggingLevel_get_WARNING_() withNSString:@"error closing input stream (ignored)" withJavaLangThrowable:e];
    }
  }
  return metadataCollection;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleI18nPhonenumbersSingleFileMetadataSourceImpl)
