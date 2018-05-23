//
//  PlistManager.m
//

#import "PlistManager.h"

@interface PlistManager ()

@property(nonatomic, strong) NSString *plistName;

@end

@implementation PlistManager

- (instancetype)initWithPlist:(NSString *)plistName
{
    if (self = [super init])
    {
        self.plistName = plistName;
    }

    return self;
}

- (NSString *)stringForKey:(NSString *)key
{
    NSString *path = [[NSBundle mainBundle] pathForResource:self.plistName ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    return (NSString *) [dict valueForKey:key];
}

@end
