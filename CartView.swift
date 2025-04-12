import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    @State private var orderPlaced = false
    @State private var orderNumber = Int.random(in: 1000...9999)

    var body: some View {
        VStack {
            if orderPlaced {
                VStack(spacing: 10) {
                    Text("Receipt")
                        .font(.title)
                        .fontWeight(.bold)
                    ForEach(cartManager.cartItems, id: \.name) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("£\(item.price, specifier: "%.2f")")
                        }
                    }
                    Divider()
                    Text("Order Number: #\(orderNumber)")
                        .font(.headline)
                        .padding(.top)
                }
                .padding()
            } else {
                List {
                    ForEach(cartManager.cartItems, id: \.name) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("£\(item.price, specifier: "%.2f")")
                        }
                    }
                }

                Button("Place Order") {
                    orderPlaced = true
                    cartManager.clearCart()
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding()
            }
        }
        .navigationTitle("Your Cart")
    }
}