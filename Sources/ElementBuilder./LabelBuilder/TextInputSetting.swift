import UIKit

//  MARK: - TextInputSetting
//Structure for configuring text input properties of a label.

public struct TextInputSetting {
    var text: String?  //  The text to be displayed in the label.
    var textColor: UIColor?  //  The color of the label's text.
    var textAlignment: NSTextAlignment?  //  The alignment of the label's text.
    var fontSize: CGFloat?  //  The font size of the label's text.
    var weight: UIFont.Weight?  //  The weight of the label's text font.
    var numberOfLines: Int?  //  The number of lines for the label's text.

    //  Initializes a new instance of `TextInputSetting`.
    //  Parameters:
    //  - text: The text to be displayed in the label. Default value is `nil`.
    //  - textColor: The color of the label's text. Default value is `nil`.
    //  - textAlignment: The alignment of the label's text. Default value is `nil`.
    //  - fontSize: The font size of the label's text. Default value is `nil`.
    //  - weight: The weight of the label's text font. Default value is `nil`.
    //  - numberOfLines: The number of lines for the label's text. Default value is `nil`.

    public init(
        text: String? = nil,
        textColor: UIColor? = nil,
        textAlignment: NSTextAlignment? = nil,
        fontSize: CGFloat? = nil,
        weight: UIFont.Weight? = nil,
        numberOfLines: Int? = nil
    ) {
        self.text = text
        self.fontSize = fontSize
        self.textColor = textColor
        self.textAlignment = textAlignment
        self.weight = weight
        self.numberOfLines = numberOfLines
    }
}
