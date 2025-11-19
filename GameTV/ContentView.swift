import SwiftUI

struct ContentView: View {
    
    @State var value = 30.0
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
                Slider(
                    value: $value,
                    in: 1...100,
                    step: 1
                ) {
                    Text("Slider")
                } minimumValueLabel: {
                    Text("1").fontWeight(.bold)
                } maximumValueLabel: {
                    Text("100").fontWeight(.bold)
                }
                Text("\(value)")
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

#Preview {
    ContentView()
}
