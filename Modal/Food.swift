import CoreFoundation
import CoreGraphics

struct Food : Identifiable {
    var id : Int
    var name : String
    var ingredients : [String]
    var howToCook : String
    var img : String
    var offset : CGFloat
    
    init(id : Int,name: String, ingredients: [String], howToCook: String, img :  String, offset : CGFloat) {
        self.id = id
        self.name = name
        self.ingredients = ingredients
        self.howToCook = howToCook
        self.img = img
        self.offset = offset
    }
}
