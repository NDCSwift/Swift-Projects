import SwiftUI

struct ProfileCardView: View {
    var body: some View {
        VStack(spacing: 16) {
            // Profile Picture
            Image("profile_image") // Replace with your image asset name
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.teal, lineWidth: 4)
                )
                .shadow(radius: 10)
            
            // Name
            Text("")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            // Tagline
            Text("SwiftUI Developer | Tech Enthusiast")
                .font(.headline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
        }
        .padding()
        .background(Color(UIColor.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}

#Preview {
    ProfileCardView()
}
