//
//  SwiftUIView.swift
//  
//
//  Created by Kaung Htet OO on 3/15/23.
//

import SwiftUI

struct FoodDetails: View {
    
    var namespace : Namespace.ID
    @Binding var show : Bool
    
    var body: some View {
        ZStack {
            ScrollView {
                cover
            }
            .background(Color("background"))
            .ignoresSafeArea()
            
            Button {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .font(.body.weight(.bold))
                    .foregroundColor(.secondary)
                    .padding(8)
                    .background(.ultraThinMaterial, in : Circle())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding(30)
            .ignoresSafeArea()
        }
    }
    
    var cover : some View {
        VStack{
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 300)
        .padding(20)
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
        .overlay (
            VStack (alignment: .leading, spacing: 12){
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
                .padding(20)
                .background(
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                        .blur(radius: 0)
                        .matchedGeometryEffect(id: "blur", in: namespace)
                )
                .offset(y: 200)
                .padding(20)
            )
    }
}

struct FoodDetails_Preview: PreviewProvider {
    
    @Namespace static var namespace
    
    static var previews: some View {
        FoodDetails(namespace: namespace, show: .constant(true))
    }
}
