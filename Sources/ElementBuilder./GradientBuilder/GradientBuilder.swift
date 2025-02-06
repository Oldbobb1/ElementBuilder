import UIKit

//  MARK: - GradientBuilder
//  Builder for creating and configuring gradient layers.

public struct GradientBuilder {

    //  Creates and configures a `CAGradientLayer` object with the specified colors.
    //  Parameters:
    //  - firstColor: The first color of the gradient.
    //  - secondColor: The second color of the gradient.
    //  - alphaColor: The alpha component of the colors. Default value is `nil`.
    //  - Returns: A configured `CAGradientLayer` object.

    public static func gradient(
        _ firstColor: UIColor,
        _ secondColor: UIColor,
        _ alphaColor: CGFloat? = nil
    ) -> CAGradientLayer {
        let gradient = CAGradientLayer()
        //  Set colors with transparency.
        gradient.colors = [
            firstColor.withAlphaComponent(alphaColor ?? 1).cgColor,
            secondColor.withAlphaComponent(alphaColor ?? 1).cgColor,
        ]
        //  Specify the start and end points of the gradient.
        gradient.startPoint = CGPoint(x: 0, y: 1)
        gradient.endPoint = CGPoint(x: 1, y: 0)
        return gradient
    }
}
