# ElementBuilder

## Introduction

The **ElementBuilder** framework is designed to simplify the creation and management of user interface elements in UIKit-based iOS applications using Swift. It offers a set of methods to create and configure various UI components such as buttons, text fields, labels, tables, containers, and images. Additionally, it includes a class for handling swipe gestures.

<img width="331" alt="Снимок экрана 2024-08-06 в 7 00 57 PM" src="https://github.com/user-attachments/assets/f76bae97-a4d4-4efa-af96-27262eaf6718">


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
  
## Installation
To add the ElementBuilder library to your Xcode project, follow these steps:

### Using Swift Package Manager

1. **Open Xcode**:
   Open your project in Xcode.

2. **Add Package Dependency**:
   - Go to `File` > `Add Packages...`.
   - In the search bar, enter the following URL: `https://github.com/Oldbobb1/ElementBuilder`.
   - Select the ElementBuilder repository when it appears and click `Add Package`.

3. **Import the Library**:
   In the files where you want to use ElementBuilder, import it by adding:
   ```swift
   import ElementBuilder
   ```
   
## Main Methods and Classes

### `Button`
#### Description
Creates an interactive button for the user interface.

#### Signature
```swift

public static func makeButton(
    setTitle: String? = nil,
    cornerRadius: CGFloat? = nil,
    content: UIControl.ContentHorizontalAlignment? = nil,
    setTitleColor: UIColor? = nil,
    font: UIFont? = nil,
    configuration: UIButton.Configuration? = nil,
    clipsToBounds: Bool? = nil,
    backgroundColor: UIColor? = nil,
    systemName: String? = nil,
    setImage: UIImage? = nil,
    imageSize: CGSize? = nil,
    alpha: Double? = nil,
    shadowColor: CGColor? = nil,
    shadowOffset: CGSize? = nil,
    shadowOpacity: Float? = nil,
    shadowRadius: CGFloat? = nil
) -> UIButton
```

<!--### Parameters Description

- **`setTitle: String?`**
  - **Description**: The text to display on the button. If `nil`, the button will not have any title.
  - **Type**: `String?`

- **`cornerRadius: CGFloat?`**
  - **Description**: The radius of the button's corners. If `nil`, the button will have the default corner radius (which is typically 0).
  - **Type**: `CGFloat?`

- **`content: UIControl.ContentHorizontalAlignment?`**
  - **Description**: The horizontal alignment of the button's content. This can be used to align the title and image horizontally within the button. Possible values include `.left`, `.center`, `.right`, and `.fill`. If `nil`, the default alignment is `.center`.
  - **Type**: `UIControl.ContentHorizontalAlignment?`

- **`setTitleColor: UIColor?`**
  - **Description**: The color of the button's title text. If `nil`, the button will use the default title color.
  - **Type**: `UIColor?`

- **`font: UIFont?`**
  - **Description**: The font of the button's title text. If `nil`, the button will use the default font.
  - **Type**: `UIFont?`

- **`configuration: UIButton.Configuration?`**
  - **Description**: An optional `UIButton.Configuration` object for customizing the button's appearance and behavior. This parameter allows you to configure button-specific settings such as title, image, and layout. If `nil`, the button will use default configuration.
  - **Type**: `UIButton.Configuration?`

- **`clipsToBounds: Bool?`**
  - **Description**: A Boolean value that determines whether the button's subviews are clipped to its bounds. If `true`, subviews that extend beyond the button's frame will be clipped. If `false`, subviews can extend beyond the button's bounds. If `nil`, the default value is used.
  - **Type**: `Bool?`

- **`backgroundColor: UIColor?`**
  - **Description**: The background color of the button. If `nil`, the button will use the default background color.
  - **Type**: `UIColor?`

- **`systemName: String?`**
  - **Description**: The name of a system image to use as the button's icon. This parameter is used with SF Symbols (system images). If `nil`, the button will not have an icon.
  - **Type**: `String?`

- **`setImage: UIImage?`**
  - **Description**: The image to display on the button. If `nil`, the button will not have an image.
  - **Type**: `UIImage?`

- **`imageSize: CGSize?`**
  - **Description**: The size of the button's image. If `nil`, the image will be displayed at its original size.
  - **Type**: `CGSize?`

- **`alpha: Double?`**
  - **Description**: The opacity of the button. A value of `1.0` is fully opaque, and a value of `0.0` is fully transparent. If `nil`, the button will use the default opacity.
  - **Type**: `Double?`

- **`shadowColor: CGColor?`**
  - **Description**: The color of the button's shadow. If `nil`, the button will not have a shadow.
  - **Type**: `CGColor?`

- **`shadowOffset: CGSize?`**
  - **Description**: The offset of the button's shadow. This defines how far the shadow is offset from the button. If `nil`, the button will use the default shadow offset.
  - **Type**: `CGSize?`

- **`shadowOpacity: Float?`**
  - **Description**: The opacity of the button's shadow. A value of `1.0` is fully opaque, and a value of `0.0` is fully transparent. If `nil`, the button will use the default shadow opacity.
  - **Type**: `Float?`

- **`shadowRadius: CGFloat?`**
  - **Description**: The blur radius of the button's shadow. A larger value creates a more blurred shadow. If `nil`, the button will use the default shadow radius.
  - **Type**: `CGFloat?`-->

### Example Usage

Here's an example of how to use the `makeButton` method:

```swift
let customButton = ButtonsWithAction.makeButton(
    setTitle: "Submit",
    cornerRadius: 10,
    content: .center,
    setTitleColor: .white,
    font: UIFont.boldSystemFont(ofSize: 16),
    backgroundColor: .blue,
    systemName: "checkmark.circle",
    setImage: UIImage(named: "iconImage"),
    imageSize: CGSize(width: 24, height: 24),
    alpha: 0.9,
    shadowColor: UIColor.black.cgColor,
    shadowOffset: CGSize(width: 2, height: 2),
    shadowOpacity: 0.5,
    shadowRadius: 4
)
```
<!--In this example, a button is created with a title, rounded corners, centered content, custom title color and font, background color, system image, custom image, reduced opacity, and shadow settings.-->

### `TextField`
#### Description
Creates a text input field.

#### Signature
```swift
public static func textField(
    placeholder: String,
    cornerRadius: CGFloat? = nil,
    font: UIFont? = nil,
    backgroundColor: UIColor? = nil,
    clipsToBounds: Bool? = nil
) -> UITextField
```

<!--### Parameters Description

- **`placeholder: String`**
  - **Description**: The placeholder text that is displayed in the text field when it is empty. This text is typically used to give users a hint about what to enter in the text field.
  - **Type**: `String`

- **`cornerRadius: CGFloat?`**
  - **Description**: The radius of the text field's corners. This parameter allows you to round the corners of the text field. If `nil`, the text field will have square corners.
  - **Type**: `CGFloat?`

- **`font: UIFont?`**
  - **Description**: The font used for the text inside the text field. This parameter allows you to specify the typeface and size of the text. If `nil`, the text field will use the default system font.
  - **Type**: `UIFont?`

- **`backgroundColor: UIColor?`**
  - **Description**: The background color of the text field. This parameter allows you to set a custom background color. If `nil`, the text field will use the default background color (usually white).
  - **Type**: `UIColor?`

- **`clipsToBounds: Bool?`**
  - **Description**: A Boolean value that determines whether the text field's subviews are clipped to its bounds. If `true`, any subviews extending beyond the text field's frame will be clipped. If `false`, subviews can extend beyond the text field's bounds. If `nil`, the default value is used.
  - **Type**: `Bool?`-->

### Example Usage

Here's an example of how to use the `textField` method:

```swift
let customTextField = TextField.textField(
    placeholder: "Enter your name",
    cornerRadius: 8,
    font: UIFont.systemFont(ofSize: 14),
    backgroundColor: UIColor.lightGray,
    clipsToBounds: true
)
```

<!--In this example, a `UITextField` is created with the following customizations:
- **Placeholder**: "Enter your name" is displayed when the text field is empty.
- **Corner Radius**: The corners of the text field are rounded with a radius of 8 points.
- **Font**: The text field uses a system font with a size of 14 points.
- **Background Color**: The text field has a light gray background color.
- **Clips to Bounds**: The text field’s subviews are clipped to its bounds.-->

### `Label`
#### Description
Creates a text label.

#### Signature
```swift
public static func label(
    text: String,
    fontSize: CGFloat,
    weight: UIFont.Weight,
    textColor: UIColor?,
    textAlignment: NSTextAlignment,
    numberOfLines: Int? = nil,
    backgroundColor: UIColor? = nil,
    clipsToBounds: Bool? = nil,
    cornerRadius: CGFloat? = nil
) -> UILabel
```

<!--### Parameters Description

- **`text: String`**
  - **Description**: The text to be displayed in the label. This is the primary content of the label.
  - **Type**: `String`

- **`fontSize: CGFloat`**
  - **Description**: The size of the font used for the label’s text. This parameter sets the size of the text. It is used in conjunction with the `weight` parameter to define the text style.
  - **Type**: `CGFloat`

- **`weight: UIFont.Weight`**
  - **Description**: The weight of the font used for the label’s text. This parameter allows you to specify the thickness of the font, such as light, regular, or bold.
  - **Type**: `UIFont.Weight`

- **`textColor: UIColor?`**
  - **Description**: The color of the text in the label. This parameter allows you to customize the text color. If `nil`, the label will use the default text color.
  - **Type**: `UIColor?`

- **`textAlignment: NSTextAlignment`**
  - **Description**: The alignment of the text within the label. This parameter determines how the text is aligned horizontally. Possible values include `.left`, `.center`, `.right`, and `.justified`.
  - **Type**: `NSTextAlignment`

- **`numberOfLines: Int?`**
  - **Description**: The maximum number of lines the label can display. If `nil`, the label will use the default number of lines (usually `1`, meaning single-line text). Set to `0` for unlimited lines.
  - **Type**: `Int?`

- **`backgroundColor: UIColor?`**
  - **Description**: The background color of the label. This parameter allows you to set a custom background color. If `nil`, the label will use the default background color (usually clear or white).
  - **Type**: `UIColor?`

- **`clipsToBounds: Bool?`**
  - **Description**: A Boolean value that determines whether the label's subviews are clipped to its bounds. If `true`, any subviews extending beyond the label’s frame will be clipped. If `false`, subviews can extend beyond the label’s bounds. If `nil`, the default value is used.
  - **Type**: `Bool?`

- **`cornerRadius: CGFloat?`**
  - **Description**: The radius of the label’s corners. This parameter allows you to round the corners of the label. If `nil`, the label will have square corners.
  - **Type**: `CGFloat?`-->

### Example Usage

Here’s an example of how to use the `label` method:

```swift
let customLabel = Label.label(
    text: "Welcome",
    fontSize: 18,
    weight: .bold,
    textColor: .black,
    textAlignment: .center,
    numberOfLines: 2,
    backgroundColor: .yellow,
    clipsToBounds: true,
    cornerRadius: 10
)
```

<!--In this example:
- **Text**: "Welcome" is displayed in the label.
- **Font Size**: The text uses a font size of 18 points.
- **Weight**: The text is bold.
- **Text Color**: The text color is black.
- **Text Alignment**: The text is centered within the label.
- **Number of Lines**: The label is allowed to display up to 2 lines of text.
- **Background Color**: The label’s background color is yellow.
- **Clips to Bounds**: The label’s subviews are clipped to its bounds.
- **Corner Radius**: The label has rounded corners with a radius of 10 points.-->

### `StackView`
#### Description
Creates a container view that arranges its child elements vertically or horizontally.

#### Signature
```swift
public static func stackView(
    axis: NSLayoutConstraint.Axis,
    distribution: UIStackView.Distribution? = nil,
    backgroundColor: UIColor? = nil,
    cornerRadius: CGFloat? = nil
) -> UIStackView
```

<!--### Parameters Description

- **`axis: NSLayoutConstraint.Axis`**
  - **Description**: The axis along which the stack view arranges its arranged subviews. This parameter determines whether the stack view arranges its subviews in a horizontal or vertical line.
  - **Type**: `NSLayoutConstraint.Axis`
  - **Possible Values**:
    - `.horizontal`: Arranges subviews horizontally.
    - `.vertical`: Arranges subviews vertically.

- **`distribution: UIStackView.Distribution?`**
  - **Description**: The distribution of the stack view’s arranged subviews along its axis. This parameter defines how the available space is allocated among the subviews. If `nil`, the stack view uses the default distribution (typically `.fill`).
  - **Type**: `UIStackView.Distribution?`
  - **Possible Values**:
    - `.fill`: The subviews fill the stack view's entire axis, stretching to fit.
    - `.fillEqually`: The subviews are distributed evenly along the stack view's axis, each taking up equal space.
    - `.fillProportionally`: The subviews are distributed proportionally based on their intrinsic content size and the available space.
    - `.equalSpacing`: The subviews are spaced evenly along the axis, with equal space between each subview.
    - `.equalCentering`: The subviews are spaced so that their centers are equally spaced along the axis.

- **`backgroundColor: UIColor?`**
  - **Description**: The background color of the stack view. This parameter allows you to set a custom background color for the stack view. If `nil`, the stack view will use the default background color (typically clear).
  - **Type**: `UIColor?`

- **`cornerRadius: CGFloat?`**
  - **Description**: The radius of the stack view’s corners. This parameter allows you to round the corners of the stack view. If `nil`, the stack view will have square corners.
  - **Type**: `CGFloat?`-->

### Example Usage

Here’s an example of how to use the `stackView` method:

```swift
let customStackView = StackView.stackView(
    axis: .vertical,
    distribution: .equalSpacing,
    backgroundColor: .lightGray,
    cornerRadius: 8
)
```

<!--In this example:
- **Axis**: The stack view arranges its subviews vertically.
- **Distribution**: The subviews are spaced evenly along the stack view’s vertical axis, with equal space between each subview.
- **Background Color**: The stack view’s background color is light gray.
- **Corner Radius**: The stack view has rounded corners with a radius of 8 points.-->

### `ImageView`
#### Description
Creates an image view for displaying images.

#### Signature
```swift
public static func image(
    _ named: String,
    cornerRadius: CGFloat? = nil,
    contentMode: UIView.ContentMode,
    clipsToBounds: Bool? = nil
) -> UIImageView
```

<!--### Parameters Description

- **`named: String`**
  - **Description**: The name of the image file to be loaded. This is the name of the image resource (without the file extension) that will be used to create the `UIImageView`. The image should be included in your app's asset catalog.
  - **Type**: `String`

- **`cornerRadius: CGFloat?`**
  - **Description**: The radius of the corners of the image view. This parameter allows you to round the corners of the image view. If `nil`, the image view will have square corners.
  - **Type**: `CGFloat?`

- **`contentMode: UIView.ContentMode`**
  - **Description**: The mode used to scale or position the image within the image view. This parameter determines how the image is adjusted to fit the bounds of the image view. Possible values include:
    - `.scaleToFill`: Scales the image to fill the entire bounds of the image view, which may distort the image.
    - `.scaleAspectFit`: Scales the image to fit within the bounds of the image view while maintaining the image's aspect ratio. The image is centered and may not fill the entire view.
    - `.scaleAspectFill`: Scales the image to fill the bounds of the image view while maintaining the image's aspect ratio. The image may be clipped if it does not fit exactly.
    - `.center`: Centers the image in the image view without scaling.
    - `.top`: Aligns the image to the top of the image view without scaling.
    - `.bottom`: Aligns the image to the bottom of the image view without scaling.
    - `.left`: Aligns the image to the left of the image view without scaling.
    - `.right`: Aligns the image to the right of the image view without scaling.
    - `.topLeft`, `.topRight`, `.bottomLeft`, `.bottomRight`: Aligns the image to the specified corner of the image view without scaling.
  - **Type**: `UIView.ContentMode`

- **`clipsToBounds: Bool?`**
  - **Description**: A Boolean value that determines whether the image view's subviews are clipped to its bounds. If `true`, any subviews extending beyond the image view’s frame will be clipped. If `false`, subviews can extend beyond the image view’s bounds. If `nil`, the default value is used.
  - **Type**: `Bool?`-->

### Example Usage

Here’s an example of how to use the `image` method:

```swift
let customImageView = Image.image(
    "exampleImage",
    cornerRadius: 10,
    contentMode: .scaleAspectFill,
    clipsToBounds: true
)
```

<!--In this example:
- **Image**: The image named "exampleImage" is loaded and displayed in the `UIImageView`.
- **Corner Radius**: The image view has rounded corners with a radius of 10 points.
- **Content Mode**: The image is scaled to fill the bounds of the image view while maintaining its aspect ratio. Some parts of the image may be clipped to fit the view.
- **Clips to Bounds**: The image view’s subviews are clipped to its bounds.-->

### `SwipeClass`
#### Description
The `SwipeClass` is a utility class designed to handle swipe gestures in a `UIViewController`. It allows you to easily detect left and right swipe gestures and execute corresponding actions. This class uses `UISwipeGestureRecognizer` to recognize swipe gestures and triggers custom actions based on the direction of the swipe.

### Properties

- **`typealias SwipeAction = () -> Void`**
  - **Description**: A type alias for a closure that takes no parameters and returns no value. This type alias is used for the swipe actions to be executed when a swipe gesture is detected.

- **`weak var viewController: UIViewController?`**
  - **Description**: A weak reference to the `UIViewController` in which the swipe gestures will be recognized. It ensures that the `SwipeClass` does not retain the view controller, preventing potential retain cycles.

- **`var leftAction: SwipeAction?, rightAction: SwipeAction?`**
  - **Description**: Optionals for closures that define the actions to be executed when a swipe left or swipe right gesture is detected, respectively. These closures are executed when the corresponding swipe gesture occurs.

### Initializer

- **`public init(viewController: UIViewController, leftAction: @escaping SwipeAction, rightAction: @escaping SwipeAction)`**
  - **Parameters**:
    - `viewController: UIViewController`: The view controller in which the swipe gestures will be recognized.
    - `leftAction: @escaping SwipeAction`: A closure to be executed when a left swipe is detected.
    - `rightAction: @escaping SwipeAction`: A closure to be executed when a right swipe is detected.
  - **Description**: Initializes a new instance of `SwipeClass`, sets up the swipe gesture recognizers, and assigns the provided actions to be executed on swipe gestures.

### Methods

- **`public func setupSwipe()`**
  - **Description**: Configures and adds `UISwipeGestureRecognizer` instances for detecting left and right swipe gestures to the view of the specified `UIViewController`. It assigns the appropriate target actions for handling the swipe gestures.
  - **Implementation**:
    - Creates and configures a `UISwipeGestureRecognizer` for left swipes and adds it to the view controller’s view.
    - Creates and configures a `UISwipeGestureRecognizer` for right swipes and adds it to the view controller’s view.

- **`@objc public func swipeLeft()`**
  - **Description**: Called when a left swipe gesture is detected. Executes the `leftAction` closure if it has been set.
  - **Implementation**:
    - Calls the `leftAction` closure if it is not `nil`.

- **`@objc public func swipeRight()`**
  - **Description**: Called when a right swipe gesture is detected. Executes the `rightAction` closure if it has been set.
  - **Implementation**:
    - Calls the `rightAction` closure if it is not `nil`.

### Example Usage

Here’s how you might use the `SwipeClass` in a `UIViewController`:

```swift
import UIKit
import ElementBuilder

class MyViewController: UIViewController {
    
            let swipeHandler = SwipeClass()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeHandler = SwipeClass(
            viewController: self,
            leftAction: { },
            rightAction: {[weak self] in
            guard let self = self else {return}
            self.dismiss(animated: true, completion: nil)
            })
        )
    }
}
```

<!--In this example:
- A `SwipeClass` instance is created with the current view controller (`self`) and closures for handling left and right swipe actions.
- The `leftAction` closure prints a message and performs an action when a left swipe is detected.
- The `rightAction` closure prints a message and performs an action when a right swipe is detected.-->


### `DateAndWeekDayFormatter`
#### Description
The `DateAndWeekDayFormatter` class is designed to format and display the day of the week and the day of the month for a given date. It utilizes `DateFormatter` to format the day of the week and `Calendar` to extract the day of the month. The formatted information is then displayed in a `UILabel`, which is added to a `UIStackView`.

### Properties

The class does not have any properties. It relies on the `DateFormatter` and `Calendar` instances created within the method for formatting and extracting date information.

### Methods

#### `init()`

- **Description**: Initializes a new instance of `DateAndWeekDayFormatter`. This initializer does not take any parameters and does not set up any properties.

#### `dateCurrent(to stackView: UIStackView, withDay day: Date)`

- **Parameters**:
  - **`stackView: UIStackView`**: The `UIStackView` to which the formatted date information will be added. This `UIStackView` will contain `UILabel` instances displaying the day of the week and the day of the month.
  - **`day: Date`**: The `Date` object representing the date for which the day of the week and day of the month are to be formatted and displayed.

- **Description**: Formats the given date to display the day of the week and the day of the month. It creates a `UILabel`, sets its text to include the formatted day of the week and the day of the month, and adds this `UILabel` to the specified `UIStackView`.
  
- **Implementation**:
  - Creates an instance of `DateFormatter` and sets its date format to `"EE"` to get the abbreviated day of the week.
  - Uses `Calendar` to extract the day of the month from the given date.
  - Creates a `UILabel`, sets its text to display the day of the week and day of the month, and configures the label's font and number of lines.
  - Adds the configured `UILabel` to the provided `UIStackView`.

### Example Usage

Here’s how you might use the `DateAndWeekDayFormatter` class within a `UIViewController`:

```swift
import UIKit
import ElementBuilder

class MyViewController: UIViewController {
    
    let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure stackView (layout, spacing, etc.)
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        view.addSubview(stackView)
        
        // Initialize DateAndWeekDayFormatter
        let dateFormatter = DateAndWeekDayFormatter()
        
        // Add formatted date labels to stackView
        let calendar = Calendar.current
        for i in 0..<3 {
            let date = calendar.date(byAdding: .day, value: i, to: Date())!
            dateFormatter.dateCurrent(to: stackView, withDay: date)
        }
    }
}
```

### Explanation

- **`viewDidLoad()`**:
  - Configures the `stackView` (you should set its layout properties such as axis, spacing, etc., according to your needs).
  - Initializes an instance of `DateAndWeekDayFormatter`.
  - Uses a loop to create dates for the next three days (including today). For each date, it calls `dateCurrent(to:withDay:)` to format the date and add it to the `stackView`.

- **StackView Configuration**: Ensure that the `stackView` is properly configured with axis, spacing, alignment, and distribution before adding it to the view. This configuration will determine how the `UILabel` instances are arranged.

This setup provides a clear and formatted display of dates, making it useful for calendar views, schedules, or any UI requiring date information.

### `DatePicker`
#### Description
 Creates and configures a UIDatePicker with customizable properties including mode, style, appearance, and shadow effects.
 
#### Signature
```swift
public static func datePicker(
    datePickerMode: UIDatePicker.Mode? = nil,
    preferredDatePickerStyle: UIDatePickerStyle? = nil,
    cornerRadius: CGFloat? = nil,
    masksToBounds: Bool? = nil,
    backgroundColor: UIColor? = nil,
    clipsToBounds: Bool? = nil,
    shadowColor: CGColor? = nil,
    shadowOffset: CGSize? = nil,
    shadowOpacity: Float? = nil,
    shadowRadius: CGFloat? = nil
) -> UIDatePicker
```

<!--### Parameters Description

- **`datePickerMode: UIDatePicker.Mode?`**
  - **Description**: Specifies the mode of the `UIDatePicker`, which determines the type of date and time information the picker will allow the user to select. The possible values are:
    - `.time`: Allows selecting only the time.
    - `.date`: Allows selecting only the date.
    - `.dateAndTime`: Allows selecting both the date and time.
    - `.countDownTimer`: Allows selecting a countdown duration.
  - **Type**: `UIDatePicker.Mode?`
  - **Default**: `nil`, which means the default mode (`.dateAndTime`) will be used if not specified.

- **`preferredDatePickerStyle: UIDatePickerStyle?`**
  - **Description**: Defines the preferred style for the `UIDatePicker`. This determines the appearance of the date picker. Possible values are:
    - `.automatic`: The system decides the style.
    - `.wheels`: The picker displays as a traditional wheel.
    - `.compact`: The picker is displayed in a more compact form (iOS 14+).
    - `.inline`: The picker displays inline with the form (iOS 14+).
  - **Type**: `UIDatePickerStyle?`
  - **Default**: `nil`, meaning the default style will be used if not specified.

- **`cornerRadius: CGFloat?`**
  - **Description**: Specifies the radius of the corners of the date picker. This parameter allows the date picker to have rounded corners. If `nil`, the date picker will have square corners.
  - **Type**: `CGFloat?`

- **`masksToBounds: Bool?`**
  - **Description**: Determines whether the date picker’s subviews are confined to its bounds. If `true`, any subviews that extend beyond the date picker's frame will be clipped. If `false`, subviews can extend outside the date picker’s bounds. If `nil`, the default value will be used.
  - **Type**: `Bool?`

- **`backgroundColor: UIColor?`**
  - **Description**: Sets the background color of the date picker. This parameter allows you to customize the color behind the picker’s content. If `nil`, the default background color will be used.
  - **Type**: `UIColor?`

- **`clipsToBounds: Bool?`**
  - **Description**: A Boolean value that specifies whether the date picker’s content is clipped to its bounds. If `true`, any content extending beyond the date picker’s frame will be clipped. If `false`, content can extend beyond the date picker’s bounds. If `nil`, the default value will be used.
  - **Type**: `Bool?`

- **`shadowColor: CGColor?`**
  - **Description**: Defines the color of the shadow cast by the date picker. This parameter allows you to set a custom shadow color. If `nil`, no shadow will be applied.
  - **Type**: `CGColor?`

- **`shadowOffset: CGSize?`**
  - **Description**: Specifies the offset of the shadow relative to the date picker. This parameter determines how far the shadow is displaced from the picker. If `nil`, the default shadow offset will be used.
  - **Type**: `CGSize?`

- **`shadowOpacity: Float?`**
  - **Description**: Sets the opacity level of the shadow. A value of `0.0` means no shadow, and `1.0` means full opacity. If `nil`, the default opacity will be used.
  - **Type**: `Float?`

- **`shadowRadius: CGFloat?`**
  - **Description**: Defines the blur radius of the shadow. A larger value results in a more diffuse shadow. If `nil`, the default shadow radius will be used.
  - **Type**: `CGFloat?`-->

### Example Usage

Here’s an example of how to use the `datePicker` method to create a customized `UIDatePicker`:

```swift
let customDatePicker = DatePicker.datePicker(
    datePickerMode: .dateAndTime,
    preferredDatePickerStyle: .wheels,
    cornerRadius: 10,
    masksToBounds: true,
    backgroundColor: UIColor.lightGray,
    clipsToBounds: true,
    shadowColor: UIColor.black.cgColor,
    shadowOffset: CGSize(width: 0, height: 2),
    shadowOpacity: 0.5,
    shadowRadius: 4
)
```

<!--In this example:
- **Date Picker Mode**: The date picker is configured to allow both date and time selection.
- **Preferred Style**: The date picker displays as a traditional wheel.
- **Corner Radius**: The date picker has rounded corners with a radius of 10 points.
- **Masks To Bounds**: The date picker’s subviews are clipped to its bounds.
- **Background Color**: The background color of the date picker is set to light gray.
- **Clips To Bounds**: The date picker’s content is clipped to its bounds.
- **Shadow Color**: The shadow color is set to black.
- **Shadow Offset**: The shadow is offset by 2 points downward.
- **Shadow Opacity**: The shadow has 50% opacity.
- **Shadow Radius**: The shadow has a blur radius of 4 points.-->


## Conclusion
The **ElementBuilder** framework offers developers powerful and convenient tools for creating and managing UI elements in UIKit-based applications. It reduces the amount of code needed for UI development and makes the process of building interfaces more intuitive and flexible.


