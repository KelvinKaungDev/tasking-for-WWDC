import SwiftUI

struct ShowFoodsView : View{
    
    @Namespace var namespace
    @State var show = false
    
    var body : some View {
        ZStack {
            if !show {
                VStack {
                    Spacer()
                    VStack (alignment: .leading, spacing: 12) {
                        Text("Mong-Hin-Gar".uppercased())
                            .font(.largeTitle.weight(.bold))
                            .matchedGeometryEffect(id: "testOne", in: namespace)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Myanmar Traditional Food")
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
            } else {
                ScrollView {
                    VStack{
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 500)
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
                        VStack  (alignment: .leading, spacing: 12){
                            Text("Mong-Hin-Gar".uppercased())
                                .font(.largeTitle.weight(.bold))
                                .matchedGeometryEffect(id: "testOne", in: namespace)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("Myanmar Traditional Food")
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
                        )
                }
            }
        }
        .onTapGesture {
            withAnimation(.spring(response: 1.0, dampingFraction: 1.0)) {
                show.toggle()
            }
        }
    }
}

struct ShowFoodsView_Previews: PreviewProvider {
    static var previews: some View {
        ShowFoodsView()
    }
}
