import SwiftUI

struct TransactionRow: View {
    let transaction: Transaction

    var body: some View {
        HStack {
            Image(systemName: transaction.image)
                .frame(width: 44, height: 44)
                .background(Color.gray.opacity(0.2))
                .clipShape(Circle())

            VStack(alignment: .leading) {
                Text(transaction.name)
                    .fontWeight(.medium)
                Text(transaction.description)
                    .font(.caption)
                    .foregroundColor(.gray)
            }

            Spacer()

            Text(transaction.amount)
                .foregroundColor(transaction.isPositive ? .green : .red)
                .fontWeight(.bold)
        }
    }
}
