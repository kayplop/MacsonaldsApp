import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            OrderView()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Order")
                }

            RewardsView()
                .tabItem {
                    Image(systemName: "gift.fill")
                    Text("Rewards")
                }

            CodeView()
                .tabItem {
                    Image(systemName: "qrcode")
                    Text("Code")
                }

            MoreView()
                .tabItem {
                    Image(systemName: "ellipsis")
                    Text("More")
                }
        }
        .accentColor(.purple)
    }
}