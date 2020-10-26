import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(mi_casa_pluginTests.allTests),
    ]
}
#endif
