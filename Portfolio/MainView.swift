import SwiftUI

struct MainView: View {

    init() {
        let appearance = UITabBarAppearance()
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.yellow]
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.cyan]
        appearance.stackedLayoutAppearance.normal.iconColor = .cyan
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
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browser")
                }
                .tag(2)
            
            MoreInfo()
                .tabItem {
                    Image(systemName: "ellipsis")
                    Text("More")
                }.tag(3)
        }
        .tint(.yellow)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
       MainView()
    }
}
