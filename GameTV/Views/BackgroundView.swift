import SwiftUI

struct BackgroundView: View {
    @Binding var game:Game
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            VStack{
                HStack{
                    Button(action: {game.restartGame()}){
                        RoundedImageView(sfSymbolName: "arrow.clockwise")
                    }
                    Spacer()
                    RoundedImageView(sfSymbolName: "list.dash")
                }
                Spacer()
                HStack{
                    NumberView(text: "SCORE", value: game.score)
                    Spacer()
                    NumberView(text: "ROUND", value: game.round)
                }
            }.padding()
        }
    }
}

#Preview {
    BackgroundView(game: .constant(Game()))
}
