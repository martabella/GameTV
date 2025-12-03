import SwiftUI

struct BackgroundView: View {

    @Environment(GameStore.self) private var gameStore:GameStore
    @State var sheetIsVisible = false
    
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            VStack{
                HStack{
                    Button(action: {gameStore.restartGameIntent()}){
                        RoundedImageView(sfSymbolName: "arrow.clockwise")
                    }
                    Spacer()
                    Button(action: {sheetIsVisible = true}){
                        RoundedImageView(sfSymbolName: "list.dash")
                    }
                }
                Spacer()
                HStack{
                    NumberView(text: "SCORE", value: gameStore.game.score)
                    Spacer()
                    NumberView(text: "ROUND", value: gameStore.game.round)
                }
            }.padding()
        }
        .sheet(isPresented: $sheetIsVisible){
            MarksView()
        }
    }
}

#Preview {
    BackgroundView().environment(GameStore())
}
