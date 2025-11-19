import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            Text("🎯🎯🎯").font(.largeTitle)
            Text("89")
                .font(.largeTitle)
                .kerning(-1)
                .fontWeight(.bold)
            Slider(
                value: .constant(90),
                    in: 1...100,
                    step: 1
                ) {
                    Text("Slider")
                } minimumValueLabel: {
                    Text("1").fontWeight(.bold)
                } maximumValueLabel: {
                    Text("100").fontWeight(.bold)
                }
            Button("TRY"){
                print("try tapped")
            }.padding()
                .font(.title3)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(21)
                
            
        }.padding()
        
    }
}

#Preview {
    ContentView()
}
