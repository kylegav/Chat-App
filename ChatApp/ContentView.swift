//
// Created by Kyle Gavin on 3/3/22.
//
//        Version 0.1.2
//
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        NavigationView {
            listView()
            chatView()
        }
        .frame(maxWidth:650, maxHeight:350)
    
        
    }
}


struct listView: View {
    
    @FetchRequest(sortDescriptors: []) var fetchedUsers: FetchedResults<StoredUsers>
    
    @Environment(\.managedObjectContext) var initAdd
    

    
    var body: some View {
        VStack {
            
            List(fetchedUsers) { ident in
                Text(ident.name ?? "Unknown")
        }
        Button("Add") {
            let test = StoredUsers(context: initAdd)
            test.id = UUID()
            test.name = "Kyle"
            }
       
        }
    }
}
struct chatView: View {
    var body: some View {
        VStack {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
