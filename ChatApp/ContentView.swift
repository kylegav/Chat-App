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
        .init(title: "Kyle Gavin", imageName: "circle.fill"),
        .init(title: "Gustavo Lopez", imageName: "circle.fill"),
        .init(title: "Joshua Heredia", imageName: "circle.fill"),
        .init(title: "Sample Names", imageName: "circle.fill"),
            ]

    var body: some View {
        NavigationView {
            listView(
                options: options
            )
            mainView()
        }
        .frame(maxWidth:650, maxHeight:350)
    }
}

struct listView: View {
    let options: [Option]
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(options, id: \.self) { option in
                HStack(alignment: .center) {
                    Image(systemName: option.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:6)
                    
                    
                    Text(option.title)
                    
                    Image(systemName: "star.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:8)
        
                    
                    Image(systemName: "moon.stars.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:8)

                    
                        
            
                
                    Spacer()
                    
                    
                }
                .padding(6)
                .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(lineWidth: 0.5)
                    )
            }
            Spacer()
            
            HStack(alignment: .bottom) {
                Image(systemName: "gear")
                    .frame(width:20, height: 20)
                Image(systemName: "questionmark.circle")
                    .frame(width:20, height:20)
            }


            
            
        }
        .padding(10)
        .frame(minWidth:200, minHeight: 350)
        .frame(maxWidth:200, minHeight: 350)

    }
}
struct mainView: View {
    var body: some View {
        Text("Selected Chat will Populate Here")
            .frame(minWidth:300, minHeight:350)
            .frame(maxWidth:550, maxHeight:350)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
