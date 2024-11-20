<img src="https://github.com/user-attachments/assets/31efbbc1-a6bb-4765-abdc-32300d9d0321" width="1300" height="180" alt="header">

# 🚀 About
**ElementBuilder** is a Swift framework designed to simplify the creation and management of user interface elements in UIKit-based iOS applications. It offers factory structs to create reusable, customizable UI elements with minimal code. Additionally, it includes a struct for handling swipe gestures.

# ✨ Features
- 🧩 **Modular UI Factories**: buttons, containerView, datePicker, label, stackView, textField, image. 
- 🌈 **Gradient Layers**: Easily add gradient backgrounds to your views.
- 🎛️ **Swipe Gesture Manager**: Simplify swipe gesture handling in your view controllers.
- 📆 **Date Utilities**: Format and display dates in your UI seamlessly.

# 📋 Сontent 
* [ButtonFactory](#ButtonFactory)
* [ContainerViewFactory](#ContainerViewFactory)
* [DatePickerFactory](#DatePickerFactory)
* [LabelFactory](#LabelFactory)
* [StackViewFactory](#StackViewFactory) 
* [TextFieldFactory](#TextFieldFactory)
* [DateAndWeekDayFormatter](#DateAndWeekDayFormatter)
* [GradientFactory](#GradientFactory)
* [ImageViewFactory](#ImageViewFactory)
* [SwipeGestureManager](#SwipeGestureManager) 

# 👮‍♂️ Requirements
* iOS 17+ 
* Xcode 15+
* Swift 5.5+ 

# 📦 Installation 
To add the ElementBuilder library to your Xcode project, follow these steps:

## Using Swift Package Manager

1. Open the Package Dependencies section in Xcode: select the “Package Dependencies” tab in the project settings.
<img src="https://github.com/user-attachments/assets/98ad5ff8-4b32-4eff-a2c7-41c9480f96cb" width="800" height="350">

2. Add a dependency on the Package Dependencies tab in Xcode: click the '+' button to add a new package.
<img src="https://github.com/user-attachments/assets/3b537935-e8ee-4b9a-858d-37ab221c70d2" width="800" height="350">

3. Add ElementBuilder via SPM: paste the repository URL and click “Add Package”.
<img src="https://github.com/user-attachments/assets/56aff5fe-f62d-42ca-9497-e66e50e3db48" width="800" height="450">

4. **Import the Library**:
In the files where you want to use ElementBuilder, import it by adding:
```swift
import ElementBuilder
```

# 🛠️ Usage

## ButtonFactory
**Struct**
```swift 
public struct {}
```
**Declaration and initialization of constants**
```swift
let button = ButtonFactory.makeButton(
appearanceAttributes: 
)
```

## ContainerViewFactory
**Struct** 
```swift 
public struct {}
```
**Declaration and initialization of constants**
```swift 
    let container = ContainerViewFactory.makeContainerView(
        appearanceAttributes: ViewAppearanceAttributes(
            backgroundColor:.systemGray6,
            cornerRadius: 25
        ),
        shadowAttributes: ViewShadowAttributes(
            shadowColor: UIColor.darkGray.cgColor,
            shadowOffset: .init(width: 0, height: 0),
            shadowOpacity: 1,
            shadowRadius: 3
        )
    )
```

## DatePickerFactory
**Struct** 
```swift 
public struct {}
```
**Declaration and initialization of constants**
```swift 
let datePicker = DatePickerFactory.
```

## LabelFactory 
**Struct**
```swift 
public struct {}
```
**Declaration and initialization of constants**
```swift 
    let label = LabelFactory.makeLabel(
        textAttributes: LabelTextAttributes(
            text:"List",
            fontSize: 28,
            weight: .bold,
            textColor: .black,
            textAlignment: .center
        ),
        styleAttributes: LabelStyleAttributes(
            backgroundColor: .clear
        )
    )
textAttributes:
)
```

## StackViewFactory
**Struct**
```swift 
public struct {}
```
**Declaration and initialization of constants**
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

### TextFieldFactory
**Struct**
```swift 
public struct {}
```
**Declaration and initialization of constants**
```swift
    let textField = TextFieldFactory.makeTextField(appearanceProperties: TextFieldAppearanceProperties(
        placeholder:"text",
        backgroundColor: .systemGray6,
        clipsToBounds: false
    ),
                                                   shadowStyle: ShadowStyle(
                                                    color: UIColor.darkGray.cgColor, offset: .init(width: 0, height: 0), opacity: 1, radius: 3
                                                   )
    )
```

## DateAndWeekDayFormatter
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

## GradientFactory
**Declaration and initialization of constants**
```swift 
let gradient = GradientFactory.makeGradientLayer(
    startColor: .systemBlue,
    endColor: .systemIndigo
)
```

## ImageViewFactory
**Declaration and initialization of constants**
```swift 
let yourImage = ImageViewFactory.makeImage(
    “yourNameImage”,
    cornerRadius: 20,
    contentMode: . scaleAspectFit,
    clipsToBounds: true 
) 
```
**Declaration and initialization of constants**
```swift 
let systemImage = ImageViewFactory.makeSystemImageViews(
    systemName:”plus.circle”,
    tintColor: .red,
    contentMode: . scaleAspectFit
)
```

## SwipeGestureManager
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

## Conclusion
**ElementBuilder** a framework offers developers powerful and convenient tools for creating and managing UI elements in UIKit-based applications. It reduces the amount of code needed for UI development and makes the process of building interfaces more intuitive and flexible.

