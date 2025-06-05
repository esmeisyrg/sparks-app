import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: Tab = .dashboard


    enum Tab {
        case dashboard, send, settings, profile
    }

    var body: some View {
        ZStack(alignment: .bottom) {
            Group {
                switch selectedTab {
                case .dashboard:
                    DashboardView()
                case .send:
                    Text("Enviar").font(.largeTitle)
                case .settings:
                    Text("Configurar").font(.largeTitle)
                case .profile:
                    ProfileView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)

            // Tab bar personalizado
            HStack(spacing: 20) {
                customTab(icon: "rectangle.grid.2x2.fill", title: "Inicio", tab: .dashboard)
                customTab(icon: "person.fill", title: "", tab: .profile)

                customTab(icon: "paperplane.fill", title: "", tab: .send)
                customTab(icon: "gearshape.fill", title: "", tab: .settings)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 12)
            .background(Color.white)
            .clipShape(Capsule())
            .shadow(radius: 5)
            .padding(.bottom, 20)

            
        }
        .background(Color.primaryBlue.opacity(0.05).ignoresSafeArea())

    }

    private func customTab(icon: String, title: String, tab: Tab) -> some View {
        Button(action: {
            selectedTab = tab
        }) {
            HStack(spacing: 6) {
                Image(systemName: icon)
                if !title.isEmpty {
                    Text(title)
                }
            }
            .foregroundColor(selectedTab == tab ? .white : .gray)
            .padding(.vertical, 8)
            .padding(.horizontal, title.isEmpty ? 10 : 16)
            .background(selectedTab == tab ? Color.primaryBlue : Color.clear)
            .clipShape(Capsule())
            
        }
    }
}



#Preview {
    MainTabView()
}
