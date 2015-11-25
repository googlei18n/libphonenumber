//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/libphonenumber/java/libphonenumber/src/main/java/com/google/i18n/phonenumbers/MetadataLoader.java
//

#ifndef _ComGoogleI18nPhonenumbersMetadataLoader_H_
#define _ComGoogleI18nPhonenumbersMetadataLoader_H_

#include "J2ObjC_header.h"

@class JavaIoInputStream;

/**
 @brief Interface for caller to specify a customized phone metadata loader.
 */
@protocol ComGoogleI18nPhonenumbersMetadataLoader < NSObject, JavaObject >

/**
 @brief Returns an input stream corresponding to the metadata to load.
 @param metadataFileName File name (including path) of metadata to load. File path is an absolute class path like /com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto.
 @return The input stream for the metadata file. The library will close this stream after it is done. Return null in case the metadata file could not be found.
 */
- (JavaIoInputStream *)loadMetadataWithNSString:(NSString *)metadataFileName;

@end

J2OBJC_EMPTY_STATIC_INIT(ComGoogleI18nPhonenumbersMetadataLoader)

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleI18nPhonenumbersMetadataLoader)

#endif // _ComGoogleI18nPhonenumbersMetadataLoader_H_
