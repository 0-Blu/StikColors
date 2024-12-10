//
//  StikColorPickerView.swift
//  StikColors
//
//  Created by Stephen on 12/10/24.
//

import SwiftUI

public struct StikColorPickerView: View {
    @Binding private var colorHex: String
    @State private var selectedColor: Color
    
    /// Initialize the color picker view with a binding to a hex string.
    public init(colorHex: Binding<String>) {
        self._colorHex = colorHex
        self._selectedColor = State(initialValue: Color(hex: colorHex.wrappedValue) ?? .white)
    }
    
    public var body: some View {
        VStack {
            ColorPicker("Select Color", selection: $selectedColor)
                .onChange(of: selectedColor) { newValue in
                    colorHex = newValue.toHex() ?? "#FFFFFF"
                }
        }
        .padding()
    }
}
