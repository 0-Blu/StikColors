import SwiftUI
import UIKit

public extension Color {
    /// Initialize `Color` from a hex string
    init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if hexSanitized.hasPrefix("#") { hexSanitized.remove(at: hexSanitized.startIndex) }
        
        var rgbValue: UInt64 = 0
        guard Scanner(string: hexSanitized).scanHexInt64(&rgbValue) else { return nil }
        
        let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
        let g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
        let b = Double(rgbValue & 0x0000FF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
    
    /// Convert `Color` to a hex string
    func toHex() -> String? {
        guard let components = UIColor(self).cgColor.components, components.count >= 3 else { return nil }
        let r = components[0]
        let g = components[1]
        let b = components[2]
        return String(format: "#%02lX%02lX%02lX", lroundf(Float(r * 255)), lroundf(Float(g * 255)), lroundf(Float(b * 255)))
    }
}
