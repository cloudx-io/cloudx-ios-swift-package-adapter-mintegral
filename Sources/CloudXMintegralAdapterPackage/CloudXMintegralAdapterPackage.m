#import <CloudXMintegralAdapter/CloudXMintegralAdapter.h>

@interface CloudXMintegralAdapterPackageLoader : NSObject
@end

@implementation CloudXMintegralAdapterPackageLoader

+ (void)load {
    CloudXMintegralAdapterRegister();
}

@end
