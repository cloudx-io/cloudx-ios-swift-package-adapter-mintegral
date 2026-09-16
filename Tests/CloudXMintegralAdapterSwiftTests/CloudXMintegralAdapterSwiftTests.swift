import CloudXMintegralAdapter
import CloudXMintegralAdapterPackage
import XCTest

final class CloudXMintegralAdapterSwiftTests: XCTestCase {
    func testAdapterIsLinkedAndRegistered() {
        XCTAssertEqual(CLXMintegralAdapterVersion, "8.1.6.0")
        XCTAssertNotNil(NSClassFromString("CLXMintegralInitializer"))
    }
}
