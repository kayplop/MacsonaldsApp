import SwiftUI

struct RewardsView: View {
    var body: some View {
        ScrollView {
            Text("Earn rewards on every order!")
                .font(.title)
                .padding()
            Text("You have 1200 points.")
                .padding()
                .background(Color.purple.opacity(0.1))
                .cornerRadius(10)
        }
        .padding()
    }
}