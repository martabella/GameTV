import SwiftUI

struct RoundedImageView: View {
    let sfSymbolName:String
    var body: some View {
        Image(systemName: "\(sfSymbolName)")
            .resizable()
            .frame(width: 32, height: 32)
            .overlay{
                Circle()
                    .stroke(lineWidth: 2)
                    .frame(width: 56, height: 56)
            }
            .foregroundColor(.primary)
    }
}

#Preview {
    RoundedImageView(sfSymbolName: "list.dash")
}
