//
//  Card.swift
//  Tasking
//
//  Created by Kaung Htet OO on 3/12/23.
//

import SwiftUI

struct Card : View {
    
    var image : String?
    var foods = FoodBrain(number: 0).getFoods()
    
    var body : some View {
        VStack (alignment: .leading, spacing: 16){
            ForEach(foods.reversed()) { food in
                Image(food.img)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: claculateWidth(), height: (UIScreen.main.bounds.height / 1.8) - CGFloat(food.id * 50))
                    .cornerRadius(15)
                    .offset(x : food.id <= 3 ? CGFloat(food.id * 30) : 60)
                
                Spacer(minLength: 0)
            }
            
//            cardText.padding(.horizontal,8)
        }
        .frame(height: UIScreen.main.bounds.height / 1.8)
        .padding(.horizontal, 25)
        
        Spacer()
//        .background(.white)
//        .clipShape(RoundedRectangle(cornerRadius: 24.0))
//        .shadow(radius: 4)
//        .padding(.bottom, 20)
    }
    
    func claculateWidth() -> CGFloat {
        let screen = UIScreen.main.bounds.width - 30
        let width = screen - (2 * 30)
        
        return width
    }
    
    var cardText : some View {
        VStack(alignment: .leading) {
            Text(image ?? "Food One")
                .font(.headline)
        }
        .foregroundColor(.gray)
        .padding(.bottom,16)
        
    }
}
