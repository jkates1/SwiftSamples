
import UIKit

extension UIColor {
    ///Return random favorite color
    static func randomFavoriteColors() -> UIColor {
        
        let favoriteColors = [UIColor.blackColor(), UIColor.brownColor(), UIColor.redColor()]
        let randomIndex = Int(arc4random_uniform(UInt32(favoriteColors.count)))
        return favoriteColors[randomIndex]
    }
}

extension Array {
    ///Returns random element from Array or nil if empty array or greater than Int.max
    func randomItem() ->  Element? {
        guard self.count >= 1 && self.count <= Int.max else {
            return nil
        }
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}




