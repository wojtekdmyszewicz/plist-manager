//
//  PlistManager.h
//

#import <Foundation/Foundation.h>

@interface PlistManager : NSObject

- (instancetype)initWithPlist:(NSString *)plistName;
- (NSString *)stringForKey:(NSString *)key;

@end
