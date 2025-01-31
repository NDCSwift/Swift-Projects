import SwiftUI
import LocalAuthentication
import AuthenticationServices

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isAuthenticated: Bool = false
    @State private var showError: Bool = false
    @State private var biometricError: String?

    var body: some View {
        VStack(spacing: 20) {
            if isAuthenticated {
                Text("Welcome!")
                    .font(.title)
                    .padding()

                Button("Sign Out") {
                    isAuthenticated = false
                    username = ""
                    password = ""
                }
                .buttonStyle(.borderedProminent)
            } else {
                VStack(spacing: 10) {
                    TextField("Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)

                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)

                    Button("Log In") {
                        authenticateUser()
                    }
                    .buttonStyle(.borderedProminent)
                    .alert(isPresented: $showError) {
                        Alert(title: Text("Authentication Failed"),
                              message: Text(biometricError ?? "Invalid username or password."),
                              dismissButton: .default(Text("Try Again")))
                    }

                    Button("Use Face ID / Touch ID") {
                        authenticateBiometrically()
                    }
                    .padding(.top, 10)
                }

                SignInWithAppleButton(.signIn) { request in
                    // Configure the Apple ID request
                    request.requestedScopes = [.fullName, .email]
                } onCompletion: { result in
                    handleAppleSignIn(result: result)
                }
                .signInWithAppleButtonStyle(.black)
                .frame(height: 50)
                .cornerRadius(10)
                .padding(.top, 20)
            }
        }
        .padding()
    }

    private func authenticateUser() {
        // Placeholder logic for username/password authentication
        if username.lowercased() == "test" && password == "password" {
            isAuthenticated = true
        } else {
            showError = true
        }
    }

    private func authenticateBiometrically() {
        let context = LAContext()
        var error: NSError?

        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "Log in securely with Face ID or Touch ID"
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, error in
                DispatchQueue.main.async {
                    if success {
                        isAuthenticated = true
                    } else {
                        biometricError = error?.localizedDescription ?? "Authentication failed."
                        showError = true
                    }
                }
            }
        } else {
            biometricError = error?.localizedDescription ?? "Biometric authentication unavailable."
            showError = true
        }
    }

    private func handleAppleSignIn(result: Result<ASAuthorization, Error>) {
        switch result {
        case .success(let authorization):
            if let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential {
                username = appleIDCredential.fullName?.givenName ?? "User"
                isAuthenticated = true
            }
        case .failure(let error):
            biometricError = "Sign in with Apple failed: \(error.localizedDescription)"
            showError = true
        }
    }
}
