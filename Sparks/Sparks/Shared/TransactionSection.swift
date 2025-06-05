import SwiftUI

struct TransactionsSection: View {
    var body: some View {
        VStack(spacing: 14) {
            HStack {
                Text("Últimas transacciones")
                    .font(.headline)
                Spacer()
                Button("See all") { }
                    .font(.footnote)
                    .foregroundColor(.white.opacity(0.8))
            }

            ForEach(sampleTransactions, id: \.id) { txn in
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
}
