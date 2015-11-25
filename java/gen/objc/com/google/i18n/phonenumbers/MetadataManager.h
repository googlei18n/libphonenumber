//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/libphonenumber/java/libphonenumber/src/main/java/com/google/i18n/phonenumbers/MetadataManager.java
//

#ifndef _ComGoogleI18nPhonenumbersMetadataManager_H_
#define _ComGoogleI18nPhonenumbersMetadataManager_H_

#include "J2ObjC_header.h"

@class ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadata;
@class ComGoogleProtobufNanoCodedInputByteBufferNano;
@class JavaIoObjectInputStream;
@protocol JavaUtilSet;

/**
 @brief Class encapsulating loading of PhoneNumber Metadata information.
 Currently this is used only for additional data files such as PhoneNumberAlternateFormats, but in the future it is envisaged it would handle the main metadata file (PhoneNumberMetadata.xml) as well.
 */
@interface ComGoogleI18nPhonenumbersMetadataManager : NSObject

#pragma mark Package-Private

+ (ComGoogleProtobufNanoCodedInputByteBufferNano *)convertStreamToByteBufferWithJavaIoObjectInputStream:(JavaIoObjectInputStream *)inArg
                                                                                                withInt:(jint)bufferSize;

+ (ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadata *)getAlternateFormatsForCountryWithInt:(jint)countryCallingCode;

+ (ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadata *)getShortNumberMetadataForRegionWithNSString:(NSString *)regionCode;

+ (id<JavaUtilSet>)getShortNumberMetadataSupportedRegions;

@end

J2OBJC_STATIC_INIT(ComGoogleI18nPhonenumbersMetadataManager)

FOUNDATION_EXPORT ComGoogleProtobufNanoCodedInputByteBufferNano *ComGoogleI18nPhonenumbersMetadataManager_convertStreamToByteBufferWithJavaIoObjectInputStream_withInt_(JavaIoObjectInputStream *inArg, jint bufferSize);

FOUNDATION_EXPORT ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadata *ComGoogleI18nPhonenumbersMetadataManager_getAlternateFormatsForCountryWithInt_(jint countryCallingCode);

FOUNDATION_EXPORT id<JavaUtilSet> ComGoogleI18nPhonenumbersMetadataManager_getShortNumberMetadataSupportedRegions();

FOUNDATION_EXPORT ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneMetadata *ComGoogleI18nPhonenumbersMetadataManager_getShortNumberMetadataForRegionWithNSString_(NSString *regionCode);

J2OBJC_TYPE_LITERAL_HEADER(ComGoogleI18nPhonenumbersMetadataManager)

#endif // _ComGoogleI18nPhonenumbersMetadataManager_H_
