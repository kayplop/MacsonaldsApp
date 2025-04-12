import SwiftUI

struct CodeView: View {
    var body: some View {
        ScrollView {
            Text("Your Promo Code")
                .font(.title)
                .padding()
            Text("SCAN1234")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .padding()
    }
}