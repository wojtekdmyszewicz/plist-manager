//
//  PlistManager.h
//

#import <Foundation/Foundation.h>

@interface PlistManager : NSObject

- (instancetype)initWithPlist:(NSString *)pList;
- (NSString *)stringForKey:(NSString *)key;

@end
