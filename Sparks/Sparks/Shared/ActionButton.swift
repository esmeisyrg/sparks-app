import SwiftUI

struct ActionButton: View {
    let title: String
    let icon: String

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(.white)
                .padding()
                .background(Color.white.opacity(0.2))
                .clipShape(Circle())

            Text(title)
                .font(.caption)
                .foregroundColor(.white)
        }
    }
}
