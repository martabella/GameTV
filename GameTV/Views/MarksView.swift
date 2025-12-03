import SwiftUI

struct MarksView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(GameStore.self) private var gameStore:GameStore
    
    var body: some View {
        
        VStack {
            HStack {
                Text("MARKS")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Button("Close"){
                    dismiss()
                }
            }
            List{
                ForEach(Array(gameStore.game.marks.indices), id: \.self) { index in
                    HStack{
                        Text("\(index+1)")
                            .kerning(1)
                            .frame(width: 68, height: 56)
                            .overlay(RoundedRectangle(cornerRadius: 21).stroke())
                        Spacer()
                        Text("\(Game.defaultMarks[index].value)")
                        Spacer()
                        Text(Game.defaultMarks[index].date, style:.time)
                    }
                }
            }
            
        }.padding()
    }
}

#Preview {
    MarksView().environment(GameStore())
}
