import SwiftUI

struct DashboardView: View {
    

    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [
                        Color(.grad1),
                        Color(.grad2),
                        Color(.grad3)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 20) {
                        
                        // Header
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
                            
                            NavigationLink(destination: ProfileView()) {
                                Image("profile")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                    .overlay(
                                        Circle()
                                            .stroke(Color.white.opacity(0.6), lineWidth: 2)
                                    )
                                    .shadow(radius: 4)
                                    .padding(.trailing, 28)
                            }
                        }
                        .padding(.horizontal)

                        // Card
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

                        // Transactions
                        VStack(spacing: 14) {
                            HStack {
                                Text("Últimas transacciones")
                                    .font(.headline)
                                Spacer()
                                Button("See all") { }
                                    .font(.footnote)
                                    .foregroundColor(.white.opacity(0.8))
                            }

                            ForEach(sampleTransactions) { txn in
                                TransactionRow(transaction: txn)
                            }
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(25)
                        .padding(.horizontal)
                        .padding(.bottom, 40)
                        .frame(width: 380)
                    }
                    .padding(.top)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    DashboardView()
}
