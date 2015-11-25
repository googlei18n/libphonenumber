//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/libphonenumber/java/libphonenumber/src/main/java/com/google/i18n/phonenumbers/internal/RegexBasedMatcher.java
//

#include "J2ObjC_source.h"
#include "com/google/i18n/phonenumbers/RegexCache.h"
#include "com/google/i18n/phonenumbers/internal/MatcherApi.h"
#include "com/google/i18n/phonenumbers/internal/RegexBasedMatcher.h"
#include "com/google/i18n/phonenumbers/nano/Phonemetadata.h"
#include "java/util/regex/Matcher.h"
#include "java/util/regex/Pattern.h"

@interface ComGoogleI18nPhonenumbersInternalRegexBasedMatcher () {
 @public
  ComGoogleI18nPhonenumbersRegexCache *regexCache_;
}

- (instancetype)init;

@end

J2OBJC_FIELD_SETTER(ComGoogleI18nPhonenumbersInternalRegexBasedMatcher, regexCache_, ComGoogleI18nPhonenumbersRegexCache *)

__attribute__((unused)) static void ComGoogleI18nPhonenumbersInternalRegexBasedMatcher_init(ComGoogleI18nPhonenumbersInternalRegexBasedMatcher *self);

__attribute__((unused)) static ComGoogleI18nPhonenumbersInternalRegexBasedMatcher *new_ComGoogleI18nPhonenumbersInternalRegexBasedMatcher_init() NS_RETURNS_RETAINED;

@implementation ComGoogleI18nPhonenumbersInternalRegexBasedMatcher

+ (id<ComGoogleI18nPhonenumbersInternalMatcherApi>)create {
  return ComGoogleI18nPhonenumbersInternalRegexBasedMatcher_create();
}

- (instancetype)init {
  ComGoogleI18nPhonenumbersInternalRegexBasedMatcher_init(self);
  return self;
}

- (jboolean)matchesNationalNumberWithNSString:(NSString *)nationalNumber
withComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneNumberDesc:(ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneNumberDesc *)numberDesc
                                  withBoolean:(jboolean)allowPrefixMatch {
  JavaUtilRegexMatcher *nationalNumberPatternMatcher = [((JavaUtilRegexPattern *) nil_chk([((ComGoogleI18nPhonenumbersRegexCache *) nil_chk(regexCache_)) getPatternForRegexWithNSString:((ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneNumberDesc *) nil_chk(numberDesc))->nationalNumberPattern_])) matcherWithJavaLangCharSequence:nationalNumber];
  return [((JavaUtilRegexMatcher *) nil_chk(nationalNumberPatternMatcher)) matches] || (allowPrefixMatch && [nationalNumberPatternMatcher lookingAt]);
}

- (jboolean)matchesPossibleNumberWithNSString:(NSString *)nationalNumber
withComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneNumberDesc:(ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneNumberDesc *)numberDesc {
  JavaUtilRegexMatcher *possibleNumberPatternMatcher = [((JavaUtilRegexPattern *) nil_chk([((ComGoogleI18nPhonenumbersRegexCache *) nil_chk(regexCache_)) getPatternForRegexWithNSString:((ComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneNumberDesc *) nil_chk(numberDesc))->possibleNumberPattern_])) matcherWithJavaLangCharSequence:nationalNumber];
  return [((JavaUtilRegexMatcher *) nil_chk(possibleNumberPatternMatcher)) matches];
}

- (void)dealloc {
  RELEASE_(regexCache_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "create", NULL, "Lcom.google.i18n.phonenumbers.internal.MatcherApi;", 0x9, NULL, NULL },
    { "init", "RegexBasedMatcher", NULL, 0x2, NULL, NULL },
    { "matchesNationalNumberWithNSString:withComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneNumberDesc:withBoolean:", "matchesNationalNumber", "Z", 0x1, NULL, NULL },
    { "matchesPossibleNumberWithNSString:withComGoogleI18nPhonenumbersNanoPhonemetadata_PhoneNumberDesc:", "matchesPossibleNumber", "Z", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "regexCache_", NULL, 0x12, "Lcom.google.i18n.phonenumbers.RegexCache;", NULL, NULL,  },
  };
  static const J2ObjcClassInfo _ComGoogleI18nPhonenumbersInternalRegexBasedMatcher = { 2, "RegexBasedMatcher", "com.google.i18n.phonenumbers.internal", NULL, 0x11, 4, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_ComGoogleI18nPhonenumbersInternalRegexBasedMatcher;
}

@end

id<ComGoogleI18nPhonenumbersInternalMatcherApi> ComGoogleI18nPhonenumbersInternalRegexBasedMatcher_create() {
  ComGoogleI18nPhonenumbersInternalRegexBasedMatcher_initialize();
  return [new_ComGoogleI18nPhonenumbersInternalRegexBasedMatcher_init() autorelease];
}

void ComGoogleI18nPhonenumbersInternalRegexBasedMatcher_init(ComGoogleI18nPhonenumbersInternalRegexBasedMatcher *self) {
  NSObject_init(self);
  ComGoogleI18nPhonenumbersInternalRegexBasedMatcher_setAndConsume_regexCache_(self, new_ComGoogleI18nPhonenumbersRegexCache_initWithInt_(100));
}

ComGoogleI18nPhonenumbersInternalRegexBasedMatcher *new_ComGoogleI18nPhonenumbersInternalRegexBasedMatcher_init() {
  ComGoogleI18nPhonenumbersInternalRegexBasedMatcher *self = [ComGoogleI18nPhonenumbersInternalRegexBasedMatcher alloc];
  ComGoogleI18nPhonenumbersInternalRegexBasedMatcher_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ComGoogleI18nPhonenumbersInternalRegexBasedMatcher)
