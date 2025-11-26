import SwiftUI

struct NumberView: View {
    
    let text: String
    let value:Int
    
    var body: some View {
        VStack{
            Text(text)
            Text("\(value)")
                .frame(width: 56, height: 56)
                .overlay{
                RoundedRectangle(cornerRadius: 10).stroke()
            }
        }
    }
}

#Preview {
    NumberView(text: "SCORE", value: 99)
}
