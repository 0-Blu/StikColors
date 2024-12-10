import XCTest
import SwiftUI
@testable import StikColors

final class StikColorsTests: XCTestCase {
    func testHexColorInitialization() {
        let color = Color(hex: "#FF5733")
        XCTAssertNotNil(color, "Color should initialize from valid hex")
    }
    
    func testHexColorConversion() {
        let color = Color.red
        XCTAssertEqual(color.toHex(), "#FF0000", "Color.red should convert to #FF0000")
    }
}
