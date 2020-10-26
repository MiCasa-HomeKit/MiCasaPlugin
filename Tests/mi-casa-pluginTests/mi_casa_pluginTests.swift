import XCTest
@testable import mi_casa_plugin

final class mi_casa_pluginTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(mi_casa_plugin().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
