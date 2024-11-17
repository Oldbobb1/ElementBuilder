import UIKit

public struct GradientFactory {
    
   public static func makeGradientLayer(
      startColor:UIColor,
      endColor: UIColor,
      alpha: CGFloat? = nil
   ) -> CAGradientLayer {
      let gradient = CAGradientLayer()
      gradient.colors = [
         startColor.withAlphaComponent(alpha ?? 1).cgColor,
         endColor.withAlphaComponent(alpha ?? 1).cgColor
      ]
      gradient.startPoint = CGPoint(x: 0, y: 0)
      gradient.endPoint = CGPoint(x: 1, y: 1)
      return gradient
   }
}



