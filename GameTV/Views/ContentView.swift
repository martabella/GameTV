import SwiftUI

struct ContentView: View {
    
    @State var sliderValue = Double(Game.maxValue+Game.minValue)/2
    @State var alertIsVisible = false
    
    @State var game = Game()
    
    var body: some View {
        ZStack{
            BackgroundView(game: $game)
            VStack {
                Text("🎯🎯🎯").font(.largeTitle)
                Text("\(game.target)")
                    .font(.largeTitle)
                    .kerning(-1)
                    .fontWeight(.bold)
                SliderView(value: $sliderValue, minimumValue: Game.minValue, maximumValue: Game.maxValue)
                Text("\(sliderValue)")
                Button("TRY"){
                    game.calculatePoints(sliderValue: sliderValue)
                    alertIsVisible = true
                }.padding()
                    .font(.title3)
                    .foregroundColor(.white)
                    .background(.accent)
                    .cornerRadius(21)
                
                
            }
            .padding()
        }.alert("Congratulations 🎉🎉🎉",
                isPresented: $alertIsVisible,
                actions: {Button("Got it"){
            game.restartRound()
            sliderValue = Double(Game.maxValue+Game.minValue)/2
        }},
                message: {Text("Your points are \(game.points)")}
        )
        
    }
}

struct SliderView: View{
    
    @Binding var value:Double
    let minimumValue:Int
    let maximumValue:Int
    
    var body : some View{
        Slider(
            value: $value,
            in: Double(minimumValue)...Double(maximumValue),
            step: 1
        ) {
            Text("Slider")
        } minimumValueLabel: {
            Text("\(minimumValue)").fontWeight(.bold)
        } maximumValueLabel: {
            Text("\(maximumValue)").fontWeight(.bold)
        }
    }
}

#Preview {
    ContentView()
}
