import SwiftUI

struct BalanceCardSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Cuenta de ahorros")
                .font(.caption)
                .foregroundColor(.white.opacity(0.7))

            Text("RD$ 205,820.03")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)

            HStack(spacing: 16) {
                ActionButton(title: "Transferir", icon: "arrow.right.arrow.left")
                ActionButton(title: "Pagar", icon: "creditcard")
                ActionButton(title: "Revisar", icon: "arrow.up.circle")
                ActionButton(title: "Escanear QR", icon: "qrcode.viewfinder")
            }
        }
        .padding()
        .background(Color.white.opacity(0.1))
        .cornerRadius(25)
        .padding(.horizontal)
    }
}
