
# StikColors

**StikColors** is a lightweight Swift Package that provides:

1. **Hex-based Color Support**: Easily convert between SwiftUI `Color` and hex strings.
2. **Reusable Color Picker View**: A simple SwiftUI `ColorPicker` component that binds to a hex string for seamless color customization.

---

## Features

- Initialize `Color` from a **hex string**.
- Convert `Color` back to a **hex string**.
- A SwiftUI **ColorPicker** view that works with hex strings using a simple binding.

---

## Installation

### Swift Package Manager

To add **StikColors** to your Xcode project:

1. In Xcode, go to **File > Add Packages...**.
2. Enter the repository URL:
   ```plaintext
   https://github.com/0-Blu/StikColors
   ```
3. Select the latest version and finish.

---

## Usage

### 1. Import StikColors

First, import the package into your Swift file:

```swift
import StikColors
```

---

### 2. Initialize Colors with Hex

You can create a SwiftUI `Color` from a hex string and convert it back to hex:

```swift
import SwiftUI
import StikColors

// Create a Color from a hex string
let color = Color(hex: "#FF5733")

// Convert a Color back to a hex string
let hexValue = color?.toHex() // Output: "#FF5733"
```

---

### 3. Use StikColorPickerView

The `StikColorPickerView` binds a hex string to a SwiftUI `ColorPicker`, allowing users to pick a color and automatically update the hex value.

```swift
import SwiftUI
import StikColors

struct ContentView: View {
    @State private var backgroundColorHex: String = "#FF5733"

    var body: some View {
        VStack {
            Text("Hello, StikColors!")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(hex: backgroundColorHex)) // Apply selected color
            
            // ColorPicker View
            StikColorPickerView(colorHex: $backgroundColorHex)
                .padding()
        }
    }
}
```

---

### Example Output

When using the `StikColorPickerView`, you will:

1. See a **color picker**.
2. Update the `backgroundColorHex` automatically when a new color is selected.

---

## API Reference

### `Color(hex: String) -> Color?`

Initializes a `Color` from a hex string:

- Input: Hex string (e.g., `#FF5733`)
- Output: SwiftUI `Color`

### `Color.toHex() -> String?`

Converts a `Color` to a hex string:

- Output: Hex string (e.g., `#FF5733`)

### `StikColorPickerView(colorHex: Binding<String>)`

A SwiftUI view that provides a `ColorPicker` and updates the bound hex string.

**Parameters**:
- `colorHex`: A `Binding<String>` representing the hex string.

---

## Requirements

- **iOS** 15.0+
- **Swift** 5.5+

---

## License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

---

## Contributions

Contributions are welcome! Please open an issue or submit a pull request if you would like to enhance **StikColors**.

---

## Author

Developed by **0-Blu**.
