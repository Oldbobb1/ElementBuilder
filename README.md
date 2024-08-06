# ElementBuilder Framework

## Introduction

The **ElementBuilder** framework is designed to simplify the creation and management of user interface elements in UIKit-based iOS applications using Swift. It offers a set of methods to create and configure various UI components such as buttons, text fields, labels, tables, containers, and images. Additionally, it includes a class for handling swipe gestures.

## Purpose

The goal of **ElementBuilder** is to provide a simple and intuitive interface for developing UI components, reducing the amount of code needed and making the process of creating user interfaces more straightforward and flexible.

## Key Features

1. **UI Element Creation**: Methods for creating various UI elements including buttons, text fields, labels, tables, containers, and images.
2. **Style Configuration**: Ability to customize styles for each element through style dictionaries.
3. **Swipe Gesture Handling**: A class for managing swipe gestures with support for left and right swipes.

## Advantages

- **Ease of Use**: Simple interface for creating and configuring UI elements.
- **Code Reduction**: Decreases the amount of code required for creating and setting up UI elements.
- **Flexibility**: Easily customize styles and properties using style dictionaries.
- **Extensibility**: Allows adding new methods and extending the framework’s functionality.

## Main Methods and Classes

### `Button`
#### Description
Creates an interactive button for the user interface.

#### Signature
```swift
func button(text: String, action: @escaping () -> Void, style: [String: Any]? = nil) -> UIButton
```

#### Parameters
- `text` (String): The text displayed on the button.
- `action` (@escaping () -> Void): Closure executed when the button is tapped.
- `style` ([String: Any]?): Dictionary of styles for the button (e.g., color, font size).

#### Example
```swift
let myButton = ElementBuilder.button(text: "Click Me", action: {
    print("Button clicked!")
}, style: ["color": UIColor.blue, "fontSize": 14])
```

### `TextField`
#### Description
Creates a text input field.

#### Signature
```swift
func textfield(placeholder: String, text: String = "", style: [String: Any]? = nil) -> UITextField
```

#### Parameters
- `placeholder` (String): Placeholder text displayed when the field is empty.
- `text` (String): Initial text in the field.
- `style` ([String: Any]?): Dictionary of styles for the text field.

#### Example
```swift
let myTextField = ElementBuilder.textfield(placeholder: "Enter your name", text: "", style: ["borderColor": UIColor.black, "padding": 5])
```

### `Label`
#### Description
Creates a text label.

#### Signature
```swift
func label(text: String, style: [String: Any]? = nil) -> UILabel
```

#### Parameters
- `text` (String): The text displayed on the label.
- `style` ([String: Any]?): Dictionary of styles for the label.

#### Example
```swift
let myLabel = ElementBuilder.label(text: "Username:", style: ["fontWeight": UIFont.Weight.bold, "fontSize": 12])
```

### `TableView`
#### Description
Creates a table view to display data.

#### Signature
```swift
func tableview(data: [[Any]], headers: [String], style: [String: Any]? = nil) -> UITableView
```

#### Parameters
- `data` ([[Any]]): 2D array of data to display in the table.
- `headers` ([String]): Array of column headers.
- `style` ([String: Any]?): Dictionary of styles for the table view.

#### Example
```swift
let data = [
    ["John", "Doe", 28],
    ["Jane", "Smith", 34]
]
let headers = ["First Name", "Last Name", "Age"]

let myTableView = ElementBuilder.tableview(data: data, headers: headers, style: ["borderColor": UIColor.black, "padding": 10])
```

### `StackView`
#### Description
Creates a container view that arranges its child elements vertically or horizontally.

#### Signature
```swift
func stackview(orientation: NSLayoutConstraint.Axis, children: [UIView], style: [String: Any]? = nil) -> UIStackView
```

#### Parameters
- `orientation` (NSLayoutConstraint.Axis): Orientation of the stack view (`.vertical` or `.horizontal`).
- `children` ([UIView]): Array of child views.
- `style` ([String: Any]?): Dictionary of styles for the stack view.

#### Example
```swift
let myStackView = ElementBuilder.stackview(orientation: .vertical, children: [myLabel, myTextField, myButton], style: ["spacing": 10])
```

### `ImageView`
#### Description
Creates an image view for displaying images.

#### Signature
```swift
func imageview(source: String, altText: String = "", style: [String: Any]? = nil) -> UIImageView
```

#### Parameters
- `source` (String): URL or path to the image.
- `altText` (String): Alternative text for the image.
- `style` ([String: Any]?): Dictionary of styles for the image view.

#### Example
```swift
let myImageView = ElementBuilder.imageview(source: "path/to/image.jpg", altText: "Sample Image", style: ["width": 100, "height": 100])
```

### `SwipeClass`
#### Description
Handles swipe gestures.

#### Signature
```swift
class SwipeClass {
    var onSwipeLeft: () -> Void
    var onSwipeRight: () -> Void

    init(onSwipeLeft: @escaping () -> Void, onSwipeRight: @escaping () -> Void)
    func detectSwipe(touchEvent: UITouch)
}
```

#### Parameters
- `onSwipeLeft` (@escaping () -> Void): Closure called on a left swipe.
- `onSwipeRight` (@escaping () -> Void): Closure called on a right swipe.

#### Methods
##### `detectSwipe`
Handles touch events to detect swipe gestures.

#### Example
```swift
let swipeHandler = SwipeClass(onSwipeLeft: {
    print("Swiped left!")
}, onSwipeRight: {
    print("Swiped right!")
})

// Call the method to handle touch events
swipeHandler.detectSwipe(touchEvent: touchEvent)
```

## Conclusion
The **ElementBuilder** framework offers developers powerful and convenient tools for creating and managing UI elements in UIKit-based applications. It reduces the amount of code needed for UI development and makes the process of building interfaces more intuitive and flexible.


