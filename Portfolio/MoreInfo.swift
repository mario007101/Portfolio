import SwiftUI

struct Bookmark: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    var items: [Bookmark]?
}

struct MoreInfo: View {
    let information: [Bookmark] = [.drivingLicense, .hobby, .example3]
    
    var body: some View {
        ZStack{
            List(information, children: \.items) { row in
                Image(systemName: row.icon)
                Text(row.name)
            }.environment(\.defaultMinListRowHeight, 50)
             .environment(\.defaultMinListHeaderHeight, 45)
             .scrollContentBackground(.hidden)
             .background() { Image("space")
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
    
    static let drivingLicense = Bookmark(name: "Driving License", icon: "car.circle", items: [Bookmark.B, Bookmark.B1, Bookmark.AM])
    static let hobby = Bookmark(name: "Hobby", icon: "dumbbell", items: [Bookmark.football, Bookmark.basketball, Bookmark.cycling, Bookmark.swimming])
    
    static let example3 = Bookmark(name: "Driving License", icon: "hand.thumbsup", items: [Bookmark.B, Bookmark.B1])
}
