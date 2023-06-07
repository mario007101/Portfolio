//
//  ContentView.swift
//  Portfolio
//
//  Created by Mário Markovič on 07/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Image("space")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Text("Mário Markovič")
                    .font(.title2)
                    .fontDesign(.monospaced)
                    .bold()
                    .transparentText(color: .gray, lineWidth: 3)
            }
            .padding(.vertical)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
