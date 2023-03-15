import SwiftUI

struct ShowFoodsView : View{
    
    @Namespace var namespace
    @State var show = false
    
    var body : some View {
        ZStack {
            ScrollView (showsIndicators: false) {
                if !show {
                    FoodCollections(namespace: namespace, show: $show)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                                show.toggle()
                            }
                        }
                }
            }

            if show {
                FoodDetails(namespace: namespace, show: $show)
            }
        }
    }
}

struct ShowFoodsView_Previews: PreviewProvider {
    static var previews: some View {
        ShowFoodsView()
    }
}
