import SwiftUI

struct ContentView: View {
    
    @State var sliderValue = 30.0
    @State var alertIsVisible = false
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                Text("🎯🎯🎯").font(.largeTitle)
                Text("89")
                    .font(.largeTitle)
                    .kerning(-1)
                    .fontWeight(.bold)
                SliderView(value: $sliderValue, minimumValue: 1, maximumValue: 100)
                Text("\(sliderValue)")
                Button("TRY"){
                    alertIsVisible = true
                }.padding()
                    .font(.title3)
                    .foregroundColor(.white)
                    .background(.accent)
                    .cornerRadius(21)
                
                
            }
            .padding()
        }.alert("Hello",
                isPresented: $alertIsVisible,
                actions: {Button("Got it"){print("TODO got it")}},
                message: {Text("This is my first alert")}
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
