import SwiftUI

struct ShowCookingStyle : View {
    var foodNumber : Int?
    
    var body : some View {
        let foods = FoodBrain(number: foodNumber ?? 0)
        
            VStack {
                Text("Ingredients of")
                Text(foods.getFoodName())
            }
            .padding(.top, 20)
            .foregroundColor(.accentColor)
            
            Spacer()
            
            VStack {
                foods.getImage()
                    .resizable()
                    .frame(width: 165.0, height: 165.0, alignment: .leading)
                    .scaledToFit()
                    .cornerRadius(25)
            }
            
            Spacer()
        
            ScrollView {
                VStack (alignment: .center ) {
                    Text(foods.getCookingStyle())
                        .font(.body)
                        .padding(.top, 20)
                        .padding(.horizontal, 50)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.brown)
                }
            }
            
            Spacer()
            
            NavigationLink (destination: ShowFoodsView()) {
                Text("Next")
                .foregroundColor(Color.white)
                .frame(width: 280, height: 50, alignment: .center)
                .background(.brown)
                .cornerRadius(10)
                .padding(.top, 50)
            }
    }
}
