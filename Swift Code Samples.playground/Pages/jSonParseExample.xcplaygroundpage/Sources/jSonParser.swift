import Foundation

public struct jSonParser {
    
    
    public static func parseJson() -> NSData?  {
        var jSon: NSData?
        
        let jsonFilePath = NSBundle.mainBundle().pathForResource("data", ofType: "json")
        let jsonData = NSFileManager.defaultManager().contentsAtPath(jsonFilePath!)
            do {
               jSon =  try NSJSONSerialization.JSONObjectWithData(jsonData!, options: .AllowFragments) as? NSData
                } catch {
                    print(error)
                    return nil
            }
        return jSon!
    }
}
