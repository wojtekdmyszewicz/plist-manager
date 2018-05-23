//
//  PlistManager.m
//

#import "PlistManager.h"

@implementation PlistManager
{
    NSString *pListName;
}

- (instancetype)initWithPlist:(NSString *)pList
{
    if (self = [super init])
    {
        pListName = pList;
    }

    return self;
}

- (NSString *)stringForKey:(NSString *)key
{
    NSString *path = [[NSBundle mainBundle] pathForResource:pListName ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    return (NSString *) [dict valueForKey:key];
}

@end
