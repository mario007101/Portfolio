import SwiftUI

struct MainView: View {
    init() {
        let appearance = UITabBarAppearance()
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.yellow]
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.yellow]
        appearance.stackedLayoutAppearance.normal.iconColor = .yellow
        UITabBar.appearance().standardAppearance = appearance
    }
    
    var body: some View {
        TabView {
            Items()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            Call()
                .tabItem {
                    Image(systemName: "envelope")
                    Text("Hit me up!")
                }
                .tag(1)
                .badge(2)
            
            Browser()
                .tabItem{
                    Image(systemName: "globe")
                    Text("Browse")
                }.tag(2)
        }
        .tint(.yellow)
    }
}

struct TabItemA_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

