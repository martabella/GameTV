import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            VStack{
                HStack{
                    RoundedImageView(sfSymbolName: "arrow.clockwise")
                    Spacer()
                    RoundedImageView(sfSymbolName: "list.dash")
                }
                Spacer()
                HStack{
                    NumberView(text: "SCORE", value: 99)
                    Spacer()
                    NumberView(text: "ROUND", value: 0)
                }
            }.padding()
        }
    }
}

#Preview {
    BackgroundView()
}
