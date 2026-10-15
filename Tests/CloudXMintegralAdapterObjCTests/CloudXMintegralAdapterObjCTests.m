@import CloudXMintegralAdapter;
@import CloudXMintegralAdapterPackage;
@import XCTest;

@interface CloudXMintegralAdapterObjCTests : XCTestCase
@end

@implementation CloudXMintegralAdapterObjCTests

- (void)testAdapterIsLinkedAndRegistered {
    XCTAssertEqualObjects(CLXMintegralAdapterVersion, @"8.1.7.0");
    XCTAssertNotNil(NSClassFromString(@"CLXMintegralInitializer"));
}

@end
