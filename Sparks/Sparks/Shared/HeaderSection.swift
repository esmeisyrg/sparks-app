import SwiftUI

struct HeaderSection: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Buen día,")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.8))
                Text("Julia Martínez")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }
            .padding(.leading, 26)

            Spacer()
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white.opacity(0.6), lineWidth: 2)
                )
                .shadow(radius: 4)
                .padding(.trailing, 28)
        }
        .padding(.horizontal)
    }
}
