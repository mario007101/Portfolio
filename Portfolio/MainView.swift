import SwiftUI

struct MainView: View {
    @State var selectedTab: Int = 0
    var body: some View {
        
        TabView(selection: $selectedTab) {
            Items()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }.tag(0)
            
            Call()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Call")
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
