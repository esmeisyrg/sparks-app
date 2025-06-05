import SwiftUI

struct ContentView: View {
    @AppStorage("isLoggedIn") var isLoggedIn = false

    var body: some View {
        Group {
            if isLoggedIn {
                MainTabView() 
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
