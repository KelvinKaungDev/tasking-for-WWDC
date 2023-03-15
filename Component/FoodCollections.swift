//
//  File.swift
//  
//
//  Created by Kaung Htet OO on 3/15/23.
//

import SwiftUI

struct FoodCollections : View {
    
    var namespace : Namespace.ID
    @Binding var show : Bool
    
    var body : some View {
        VStack {
            Spacer()
            VStack (alignment: .leading, spacing: 12) {
                Text("Mong-Hin-Gar")
                    .font(.largeTitle.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .matchedGeometryEffect(id: "title", in: namespace)
                Text("Myanmar Traditional Food".uppercased())
                    .font(.footnote.weight(.semibold))
                    .matchedGeometryEffect(id: "subtitle", in: namespace)
                Text("To add an action to a workflow, first open or create a workflow in Xcode or in the Xcode Cloud tab and ... ")
                    .matchedGeometryEffect(id: "description", in: namespace)
            }
            .padding(15)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .blur(radius: 0)
                    .matchedGeometryEffect(id: "blur", in: namespace)
            )
        }
        .foregroundColor(.white)
        .background(
            Image("foodOne")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "background", in: namespace)
        )
        .mask(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
        )
        .frame(height: 300)
        .padding(20)
    }
    
    struct FoodCollections_Preview : PreviewProvider {
        @Namespace static var namspace
        
        static var previews: some View {
            FoodCollections(namespace: namspace, show: .constant(true))
        }
    }
}


