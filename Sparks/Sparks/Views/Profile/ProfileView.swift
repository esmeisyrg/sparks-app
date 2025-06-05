import SwiftUI

struct ProfileView: View {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = true

    var body: some View {
        NavigationView {
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
                ScrollView {
                    VStack(spacing: 20) {
                        
                        // Header
                        VStack(spacing: 12) {
                            Image("profile")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 90, height: 90)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                                .shadow(radius: 4)

                            Text("Julia Martínez")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)

                            Text("julia.martinez@example.com")
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                        .padding(.top)

                        // Configuración del profile
                        VStack(spacing: 1) {
                            ProfileOptionRow(icon: "bell.fill", title: "Notificaciones")
                            ProfileOptionRow(icon: "lock.fill", title: "Seguridad")
                            ProfileOptionRow(icon: "creditcard.fill", title: "Métodos de pago")
                            ProfileOptionRow(icon: "gearshape.fill", title: "Configuración general")
                     
                            
                            Button(action: {
                                isLoggedIn = false
                                }) {
                                ProfileOptionRow(icon: "arrowshape.turn.up.left.fill", title: "Cerrar sesión")
                                              }
                                          }
                        .background(Color.white)
                        .cornerRadius(20)
                        .padding(.horizontal)
                        .padding(.top, 16)

                        Spacer()
                    }
                    .padding(.top, 20)
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ProfileOptionRow: View {
    let icon: String
    let title: String

    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .frame(width: 32, height: 32)
                .background(Color.primaryBlue.opacity(0.1))
                .foregroundColor(Color.primaryBlue)
                .cornerRadius(8)

            Text(title)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.black)

            Spacer()

            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding(.horizontal)
        .padding(.vertical, 14)
        .background(Color.white)
        .frame(width: 350)
    }
}

#Preview {
    ProfileView()
}
