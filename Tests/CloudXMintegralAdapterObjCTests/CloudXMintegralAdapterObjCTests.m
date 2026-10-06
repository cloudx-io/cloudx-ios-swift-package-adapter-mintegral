@import CloudXMintegralAdapter;
@import CloudXMintegralAdapterPackage;
@import XCTest;

@interface CloudXMintegralAdapterObjCTests : XCTestCase
@end

@implementation CloudXMintegralAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXMintegralAdapterVersion, @"8.1.6.1");
    XCTAssertNotNil(NSClassFromString(@"CLXMintegralInitializer"));
}

@end
