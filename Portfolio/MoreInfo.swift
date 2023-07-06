import SwiftUI

struct Bookmark: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    var items: [Bookmark]?
}

struct MoreInfo: View {
    let information: [Bookmark] = [.drivingLicense, .hobby, .languages]
    
    var body: some View {
        ZStack{
            List(information, children: \.items) { row in
                Image(systemName: row.icon)
                    .foregroundColor(.cyan)
                    .bold()
                Text(row.name)
            }.environment(\.defaultMinListRowHeight, 50)
             .environment(\.defaultMinListHeaderHeight, 45)
             .scrollContentBackground(.hidden)
             .background() {
                 Image("space")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
            }
        }.navigationTitle("More information")
    }
}

struct MoreInfo_Previews: PreviewProvider {
    static var previews: some View {
        MoreInfo()
    }
}

extension Bookmark {
    //First List
    static let B = Bookmark(name: "Driving Licence B", icon: "car")
    static let B1 = Bookmark(name: "Driving Licence B1", icon: "car")
    static let AM = Bookmark(name: "Driving Licence AM", icon: "car")
    
    //Second List
    static let football = Bookmark(name: "Football", icon: "soccerball.inverse")
    static let basketball = Bookmark(name: "Basketball", icon: "basketball.fill")
    static let cycling = Bookmark(name: "Cycling", icon: "bicycle")
    static let swimming = Bookmark(name: "Swimming", icon: "figure.pool.swim")
    
    //Third List
    static let english = Bookmark(name: "English", icon: "globe")
    static let slovak = Bookmark(name: "Slovak", icon: "globe")
    static let german = Bookmark(name: "German", icon: "globe")
    static let czech = Bookmark(name: "Czech", icon: "globe")
    
    static let drivingLicense = Bookmark(name: "Driving License", icon: "car.circle", items: [Bookmark.B, Bookmark.B1, Bookmark.AM])
    static let hobby = Bookmark(name: "Hobby", icon: "dumbbell", items: [Bookmark.football, Bookmark.basketball, Bookmark.cycling, Bookmark.swimming])
    static let languages = Bookmark(name: "Languages", icon: "globe.europe.africa", items: [Bookmark.english, Bookmark.slovak, Bookmark.german, Bookmark.czech])
}
