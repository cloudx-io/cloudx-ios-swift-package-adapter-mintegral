import CloudXMintegralAdapter
import CloudXMintegralAdapterPackage
import XCTest

final class CloudXMintegralAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXMintegralAdapterVersion, "8.1.7.1")
        XCTAssertNotNil(NSClassFromString("CLXMintegralInitializer"))
    }
}
