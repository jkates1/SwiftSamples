
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
    ///Returns random element from Array or nil if empty array
    
    func randomItem() ->  Element? {
        guard self.count >= 1 else {
            return nil
        }
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}

extension CollectionType {
    /// Return a copy of `self` with its elements shuffled
    func shuffle() -> [Generator.Element] {
        var list = Array(self)
        list.shuffleInPlace()
        return list
    }
}

extension MutableCollectionType where Index == Int {
    /// Shuffle the elements of `self` in-place.
    mutating func shuffleInPlace() {
        // empty and single-element collections don't shuffle
        if count < 2 { return }
        
        for i in 0..<count - 1 {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}




