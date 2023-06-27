import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
                Items()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }.tag(0)

                Call()
                    .tabItem {
                        Image(systemName: "envelope")
                        Text("Hit me up!")
                    }.tag(1)
        }
        .tint(.yellow)
    }
}

struct TabItemA_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
