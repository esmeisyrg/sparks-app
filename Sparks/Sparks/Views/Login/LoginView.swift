import SwiftUI

struct LoginView: View {
    @AppStorage("isLoggedIn") var isLoggedIn = false
    @State private var username = ""
    @State private var password = ""

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(.grad1),
                    Color(.grad2),
                    Color(.grad3)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack {
                // Header con fondo blanco redondeado
                ZStack {
                    Color.white
                        .clipShape(RoundedCornerShape(radius: 85, corners: [.bottomLeft]))
                        .ignoresSafeArea()

                    Image("sp-logo2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 190, height: 190)
                        .padding(.top, 1)
                        .padding(.bottom, 10)
                }
                .frame(height: 170)

                Text("Iniciar sesión")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)
                    .padding(.top, 50)
                    .foregroundColor(.white)

                VStack(spacing: 14) {
                    TextField("Email", text: $username)
                        .autocapitalization(.none)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(color: .gray.opacity(0.2), radius: 4, x: 0, y: 2)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white.opacity(0.2), lineWidth: 1.5)
                        )

                    SecureField("Contraseña", text: $password)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(20)
                        .shadow(color: .gray.opacity(0.2), radius: 4, x: 0, y: 2)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white.opacity(0.2), lineWidth: 1.5)
                        )
                }
                .padding(.horizontal, 32)

                // Botón de login
                Button(action: {
                    if !username.isEmpty && !password.isEmpty {
                        withAnimation {
                            isLoggedIn = true
                        }
                    } else {
                        print("Faltan completar campos")
                    }
                }) {
                    Text("Iniciar")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .foregroundColor(Color.primaryBlue)
                        .cornerRadius(20)
                }
                .padding(.horizontal, 32)
                .padding(.top, 24)

                Spacer()

                // Footer
                HStack {
                    Text("¿No tienes cuenta?")
                        .foregroundColor(.white.opacity(0.8))
                        .font(.subheadline)

                    Button("Regístrate") {
                        // Acción futura
                    }
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                }
                .font(.footnote)
                .padding(.bottom, 24)
            }
        }
    }
}

struct RoundedCornerShape: Shape {
    var radius: CGFloat = 25
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

#Preview {
    LoginView()
}
