import UIKit


public class Gradient {
    
   public static func gradientLayers(
      oneColor:UIColor, 
      twoColor: UIColor,
      alpha: CGFloat? = nil
   ) -> CAGradientLayer {
      
      let gradient = CAGradientLayer()
      gradient.colors = [
         oneColor.withAlphaComponent(alpha ?? 1).cgColor,
         twoColor.withAlphaComponent(alpha ?? 1).cgColor
      ]
      gradient.startPoint = CGPoint(x: 0, y: 0)
      gradient.endPoint = CGPoint(x: 1, y: 1)
      return gradient
   }
}


