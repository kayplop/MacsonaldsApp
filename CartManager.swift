import Foundation

class CartManager: ObservableObject {
    @Published var cartItems: [MenuItem] = []

    func addToCart(item: MenuItem) {
        cartItems.append(item)
    }

    func clearCart() {
        cartItems.removeAll()
    }
}