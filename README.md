<!--<img src="/image/logo.png" width="1300" height="180">-->

<p align="left">
  <img src="/image/icon/ElementBuilder.png" width="150" height="150" align="middle"/>
  <span style="display: inline-block; vertical-align: middle; padding-left: 20px;">ElementBuilder</span>
</p>

<p align="left" style="display: flex; justify-content: flex-start;">
  <img src="/image/icon/ElementBuilderLogo.png" width="150" height="150" />
  <img src="/image/icon/ElementBuilderName.png" width="150" height="150" />
</p>

# 🚀 About
**ElementBuilder** is a Swift framework designed to simplify the creation and management of user interface elements in UIKit-based iOS applications. It provides factory structs for reusable, customizable UI elements with minimal code. Additionally, it includes tools for handling swipe gestures and working with dates.

# ✨ Features
- 🧩 **Modular UI Factories**: buttons, containerView, datePicker, label, stackView, textField, image. 
- 🌈 **Gradient Layers**: Easily add gradient backgrounds to your views.
- 🎛️ **Swipe Gesture Manager**: Simplify swipe gesture handling in your view controllers.
- 📆 **Date Utilities**: Format and display dates in your UI seamlessly.

# 📋 Сontent 
* [ButtonBuilder](#buttonBuilder)
* [DateAndWeekDayFormatter](#dateAndWeekDayFormatter)
* [DatePickerBuilder](#datePickerBuilder)
* [GradientBuilder](#gradientBuilder)
* [ImageViewBuilder](#imageViewBuilder)
* [LabelBuilder](#LabelBuilder)
* [StackViewBuilder](#stackViewBuilder)
* [SwipeGestureManager](#swipeGestureManager)
* [TextFieldBuilder](#textFieldBuilder)
* [UIViewBuilder](#uiViewBuilder) 

# 👮‍♂️ Requirements
* iOS 17+ 
* Xcode 15+
* Swift 5.5+ 

# 📦 Installation 
To add the ElementBuilder library to your Xcode project, follow these steps:
### Using Swift Package Manager

1.**Open the "Package Dependencies" section in Xcode**: select the “Package Dependencies” tab in the project settings.
<!--<img src="https://github.com/user-attachments/assets/98ad5ff8-4b32-4eff-a2c7-41c9480f96cb" width="800" height="350">-->
<img src="/image/screen1.png" width="800" height="350">

2.**Add a dependency**: click the '+' button to add a new package.
<!--<img src="https://github.com/user-attachments/assets/3b537935-e8ee-4b9a-858d-37ab221c70d2" width="1000" height="350">-->
<img src="/image/screen2.png" width="1000" height="350">

3.**Enter the repository URL**:
Paste the repository URL and click “Add Package.”.
<!--<img src="https://github.com/user-attachments/assets/56aff5fe-f62d-42ca-9497-e66e50e3db48" width="1000" height="550">-->
<img src="/image/screen3.png" width="1000" height="550">

4.**Import the Library**:
In the files where you want to use ElementBuilder, import it by adding:
```swift
import ElementBuilder
```

# 🛠️ Usage
* Example: Creating a Login Screen
* Here’s how to build a basic login screen using **ElementBuilder**:
```swift 
import UIKit
import SnapKit
import ElementBuilder

class LoginViewController: UIViewController {

    let titleLabel = LabelFactory.makeLabel(
        textAttributes: LabelTextAttributes(
            text: "Title Label",
            fontSize: 30,
            weight: .bold,
            wtextColor: .black,
            wtextAlignment: .center
        ),
        styleAttributes: LabelStyleAttributes(
            backgroundColor: .clear,
            clipsToBounds: false
        )
    )

    let buttonCloseView = ButtonFactory.makeButton(
        appearanceAttributes: ButtonAppearanceAttributes(
            cornerRadius: 17,
            clipsToBounds: false,
            backgroundColor: .clear
        ),
        shadowAttributes: ShadowAttributes(
            shadowColor: UIColor.systemRed.cgColor,
            shadowOffset: CGSize(width: 0, height: 0),
            shadowOpacity: 0.6,
            shadowRadius: 3
        ),
        imageAttributes: ButtonImageAttributes(
            systemName: "x.circle",
            imageSize: CGSize(width: 39, height: 38),
            alpha: 1,
            tintColor: .red
        )
    )

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(titleLabel)
        view.addSubview(buttonCloseView)

        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(10)
            make.leading.equalTo(10)
            make.trailing.equalTo(-10)
        }
        buttonCloseView.snp.makeConstraints { make in
            make.top.equalTo(10)
            make.leading.equalTo(20)
        }
    }
}
``` 

# 📚 Factories Overview
Here’s what each factory does and how it simplifies UI creation:

### ButtonFactory 
* **Purpose**: Creates customizable buttons.
* **Usage**:
```swift
  let buttonCloseView = ButtonFactory.makeButton(
    appearanceAttributes: ButtonAppearanceAttributes(
        cornerRadius: 17,
        clipsToBounds: false,
        backgroundColor: .clear
    ),
    shadowAttributes: ShadowAttributes(
        shadowColor: UIColor.systemRed.cgColor,
        shadowOffset: CGSize(width: 0, height: 0),
        shadowOpacity: 0.6,
        shadowRadius: 3
    ),
    imageAttributes: ButtonImageAttributes(
        systemName:"x.circle",
        imageSize: CGSize(width: 39, height: 38) ,
        alpha: 1,
        tintColor: .red
    )
)

```

### ContainerViewFactory 
* **Purpose**: Generates views with customizable shadows and rounded corners.
* **Usage**:
```swift 
let container = ContainerViewFactory.makeContainerView(
    appearanceAttributes: ViewAppearanceAttributes(
        backgroundColor:.systemGray6,
        cornerRadius: 25
    ),
    shadowAttributes: ShadowAttributes(
        shadowColor: UIColor.darkGray.cgColor,
        shadowOffset: .init(width: 0, height: 0),
        shadowOpacity: 1,
        shadowRadius: 3
    )
)
```

### DateAndWeekDayFormatter 
* **Purpose**: Simplifies date formatting and displays dates with corresponding weekdays in UI elements like stack views.
* **Usage**:
```swift 
import UIKit
import ElementBuilder

class MyViewController: UIViewController {
    
    let stackView = StackViewFactory.makeStackView(
        configuration: StackViewConfiguration(
            axis: .horizontal,
            distribution: .fillEqually,
            backgroundColor: .clear
        ),
        style: StackViewStyle(
            cornerRadius: 10,
            spacing: 10,
            layoutMargins: .init(top: 10, left: 10, bottom: 10, right: 10)
        )
    )

  let dateFormatter = DateAndWeekDayFormatter()
  
  override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(stackView)
        dateCalendar()
    }
    
    func dateCalendar() {
        let calendar = Calendar.current
        for i in 0..<3 {
            let date = calendar.date(byAdding: .day, value: i, to: Date())!
            dateFormatter.dateCurrent(to: stackView, withDay: date)
        }
    }
}
```

### DatePickerFactory 
* **Purpose**: Creates a date picker with customizable styles.
* **Usage**:
```swift 
 let datePicker = DatePickerFactory.makeDatePicker(
    appearanceAttributes: DatePickerAppearanceAttributes(
        datePickerMode: .time,
        preferredDatePickerStyle: .wheels,
        cornerRadius: 15,
        masksToBounds: true,
        backgroundColor: .systemGray6
    )
)
```
### GradientBuilder 
* **Purpose**: Adds gradient layers to views.
* **Usage**:
1.
```swift 
let gradientController = GradientBuilder.gradient(
    firstColor: .systemBlue,
    secondColor: .systemIndigo
)
```
2.
```swift 
let gradientTableView = GradientBuilder.gradient(
    firstColor: .systemBlue,
    secondColor: .systemIndigo,
    alphaColor: 0.6
)
```

### ImageViewBuilder 
* **Purpose**: Creates image views with system or custom images, supporting various styles.
* **Usage**:
1.
```swift 
let yourImage = ImageViewBuilder.image(
    named:"yourNameImage",
    cornerRadius: 20,
    contentMode: . scaleAspectFit,
    clipsToBounds: true
)
```
2.
```swift 
let systemImage = ImageViewBuilder.systemImage(
    systemName:"plus.circle",
    tintColor: .red,
    contentMode: . scaleAspectFit
)
```

### StackViewFactory 
* **Purpose**: Creates stack views with flexible layouts.
* **Usage**:
```swift 
 let stackView = StackViewFactory.makeStackView(
    configuration: StackViewConfiguration(
        axis: .horizontal,
        distribution: .fillEqually,
        backgroundColor: .clear
    ),
    style: StackViewStyle(
        cornerRadius: 10,
        spacing: 10,
        layoutMargins: .init(top: 10, left: 10, bottom: 10, right: 10)
    )
)
```
### SwipeGestureManager 

* **Purpose**: Simplifies swipe gesture handling.
* **Usage**:
```swift
import UIKit
import ElementBuilder

class MyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        swipe()
    }
    
    func swipe() {
        let swipeHandler = SwipeGestureManager(
            viewController: self,
            leftAction: { },
            rightAction: {[weak self] in
                guard let self = self else {return}
                self.dismiss(animated: true, completion: nil)
            })
    }
}
```
### TextFieldFactory 
* **Purpose**: Creates text fields with customizable appearance and shadow styles.
* **Usage**:
```swift
let textField = TextFieldFactory.makeTextField(
    appearanceProperties: TextFieldAppearanceProperties(
        placeholder:"text",
        backgroundColor: .systemGray6,
        clipsToBounds: false
    ),
    shadowAttributes: ShadowAttributes(
        color: UIColor.darkGray.cgColor,
        offset: .init(width: 0, height: 0),
        opacity: 1,
        radius: 3
    )
)
```

### TitleFactory 
* **Purpose**: Builds labels with specific text and style attributes.
* **Usage**:
```swift 
  let titleLabel = TitleFactory.makeTitle(textAttributes: TitleTextAttributes(
      text:"Title Label",
      fontSize: 30,
      weight: .bold,
      wtextColor: .black,
      wtextAlignment: .center
   ),
      styleAttributes: TitleStyleAttributes(
      backgroundColor: .clear,
      clipsToBounds: false
   )
)
```

## Conclusion
**ElementBuilder** a framework offers developers powerful and convenient tools for creating and managing UI elements in UIKit-based applications. It reduces the amount of code needed for UI development and makes the process of building interfaces more intuitive and flexible.

