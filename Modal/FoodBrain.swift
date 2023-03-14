import SwiftUI

struct FoodBrain {
    var userClicked : Int
    @State var foods = [
        Food(id : 0,name: "Mong-Him-Gar", ingredients: ["Onion", "Cheese"], howToCook: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", img : "foodOne", offset: 0),
        Food(id : 1,name: "Shan Noodle", ingredients: ["noodle", "Onion Oil"], howToCook: "Lol", img : "foodTwo", offset: 0),
        Food(id : 2,name: "Mogok Food", ingredients: ["Ginger"], howToCook: "Hello", img : "foodThree", offset: 0),
        Food(id : 3,name: "Mandalay Food", ingredients: ["Ginger"], howToCook: "Hello", img : "foodFour", offset: 0)
    ]
    
    init(number : Int) {
        self.userClicked = number
    }
    
    func getFoods() -> [Food] {
        return foods
    }
    
    func totalFoods() -> Int {
        return foods.count
    }
    
    func getFoodName() -> String {
        return foods[userClicked].name
    }
    
    func getCookingStyle() -> String {
        return foods[userClicked].howToCook
    }
    
    func getImage() -> Image {
        Image(foods[userClicked].img)
    }
    
   mutating func nextFoods() {
        if userClicked < totalFoods() - 1 {
            userClicked += 1
        }
    }
        
}
