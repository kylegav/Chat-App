//
// Created by Kyle Gavin on 3/1/22.
//
//        Version 0.1.1
//
//

import SwiftUI

struct Message: Hashable {
    let userName: String
    let isOnline: Bool?
}

struct ContentView: View {
    let options: [Message] = [
        .init(userName: "Kyle Gavin", isOnline: false),
        .init(userName: "Gustavo Lopez", isOnline: false),
        .init(userName: "Joshua Heredia", isOnline: false)
            ]

    var body: some View {
        NavigationView {
            listView(
                options: options
            )
                .frame(width: 200)
        }
        .frame(maxWidth:600, maxHeight:350)
    }
}

struct listView: View {
    let options: [Message]
    var body: some View {
        VStack {
            ForEach(options, id: \.self) { option in
                HStack {
                    Text(option.userName)
                        
                    Spacer()
                }
                .padding(8)
            }
            Spacer()
        }
        .padding(12)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
