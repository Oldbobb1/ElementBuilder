import UIKit

// Factory for creating gradient layers `CAGradientLayer`.
public struct GradientFactory {
    
    // Creates and customizes the `CAGradientLayer` gradient layer.
       /// - Parameters:
       /// - startColor: The starting color of the gradient.
       /// - endColor: The final color of the gradient.
       /// - alpha: Transparency (alpha channel) for the start and end colors.
       /// - Returns: The customized instance of `CAGradientLayer`.
   public static func makeGradientLayer(
      startColor:UIColor,
      endColor: UIColor,
      alpha: CGFloat? = nil
   ) -> CAGradientLayer {
      let gradient = CAGradientLayer()
       
       // Set colors with transparency.
      gradient.colors = [
         startColor.withAlphaComponent(alpha ?? 1).cgColor,
         endColor.withAlphaComponent(alpha ?? 1).cgColor
      ]
       
       // Specify the start and end points of the gradient.
      gradient.startPoint = CGPoint(x: 0, y: 0)
      gradient.endPoint = CGPoint(x: 1, y: 1)
      return gradient
   }
}



