import SwiftUI

struct OrderView: View {
    @EnvironmentObject var cartManager: CartManager

    var menuItems = [
        MenuItem(name: "Big Macson", price: 5.99),
        MenuItem(name: "Chicken Burger", price: 4.49),
        MenuItem(name: "Purple Shake", price: 2.99)
    ]

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(menuItems, id: \.name) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Text("£\(item.price, specifier: "%.2f")")
                        Button(action: {
                            cartManager.addToCart(item: item)
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.purple)
                        }
                    }
                    .padding()
                    .background(Color.blue.opacity(0.1))
                    .cornerRadius(10)
                }

                NavigationLink(destination: CartView()) {
                    Text("View Cart")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }
}