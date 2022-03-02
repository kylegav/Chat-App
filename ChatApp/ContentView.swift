//
// Created by Kyle Gavin on 3/1/22.
//
//        Version 0.1.1
//
//

import SwiftUI

struct Option: Hashable {
    let title: String
    let imageName: String
}

struct ContentView: View {
    let options: [Option] = [
        .init(title: "Chat", imageName: "message"),
        .init(title: "Settings", imageName: "gear"),
        .init(title: "About", imageName: "info.circle")
            ]

    var body: some View {
        NavigationView {
            listView(
                options: options
            )
        }
        .frame(maxWidth:550, maxHeight:350)
    }
}

struct listView: View {
    let options: [Option]
    var body: some View {
        VStack {
            ForEach(options, id: \.self) { option in
                HStack {
                    Image(systemName: option.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 20)
                    
                    
                    Text(option.title)

                    Spacer()
                }
                .padding(4)
            }
            Spacer()
        }
        .padding(12)
    }
}
struct mainView: View {
    let cols: [GridItem] = [
        .init(.flexible()),
        .init(.flexible()),
        .init(.flexible())
        
        ]
    let videoImage = Array(1...6).map { "video\($0)"}
    
    var body: some View {
        VStack {
            Image("header")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            LazyVGrid(columns: cols) {
                ForEach(videoImage, id: \.self) {imageName in
                    VStack {
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Text("This is a Link to Open Group ")
                            .bold()
                    }
        
                    
                    
                }
            }
            
            Spacer()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
