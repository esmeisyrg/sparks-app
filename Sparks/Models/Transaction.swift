// Datos de ejemplo

import SwiftUI

struct Transaction: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let amount: String
    let isPositive: Bool
    let image: String
}
let sampleTransactions: [Transaction] = [
    Transaction(
        name: "Supermercado Bravo", description: "Compra", amount: "-2,350", isPositive: false,
        image: "cart"),
    Transaction(
        name: "Luis Rodríguez", description: "Transferencia", amount: "+12,500", isPositive: true,
        image: "person"),
    Transaction(
        name: "Altice", description: "Pago de servicio", amount: "-1,200", isPositive: false,
        image: "wifi"),
    Transaction(
        name: "Netflix", description: "Suscripción", amount: "-550", isPositive: false,
        image: "film"),
]
