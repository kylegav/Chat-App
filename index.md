# Weekly Progress 4/12
## By Deaz Nunoo
During our meeting with Dr.Rasamny we were shown the many flaws of our diagram. The biggest issue at hand is how vague all of the wording is within our diagram. Pharases like "loop through network" have to be specified much more. We need to talk about the specifics of what we need to do, also we need a better way of doing things such as connecting a new peer to an exisiting peer. Questions to consider are "How will peers connect?", "How will nodes be discovered?" and "how will a database be implemented?".

# Weekly Progress 4/5
## By Deaz Nunoo
For this week we made a sequence diagram out of our orginal diagram. This was made to visualize how everythuing would function, and connect to one another. We soon began to realize that there were flaws within our diagram, and that it was not ready to even be transffered over to a sequence diagram. We then added a section in our diagram that would handle message sending, which is a main function for our application. 

# Weekly Progress 3/14
## By Pride Mbabit
During our meeting for this week, we discussed the network scanner article kyle found. Which made us take a step back and reconsider how to outline node syncing,updating, discovering and deleting in a more technical manner that is easy to understand and implement. We then edited and finalized the node discorvery function flowchart so everyone understands how the rest of the functions should flow. Since we now understood how technically we need to be in terms of the flow chart, each person chose a function he will work on and complete by our next meeting. Each person also updated the backlog with their to-do task. In that same meeting, Kyle helped us visualize the connectivity of peers and how they will go about sending and receiving messages. For our next meeting next week, we will revise everyone’s flowchart and correct it if need be.


# SwiftUI Features, and Architecture 3/6
## By Kyle Gavin 

For the last week, we have been ideating a UI Layout for our Chat App. With SwiftUI, It is a relatively simple process to get a basic structure up and running. The following code snippet is a basic sudo-code outline (That also happens to compile 😉). After the user authenticates, the ContentView brings users directly to a Left-Hand Side (LHS) Column, which displays the identified users currently or previously on the local network. The Right-Hand Side (RHS) Column will display the selected Chat based on user input and allow the user to send messages. 
```
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
    var body: some View {
        Text("This is the ListView")
       
    }
}
struct chatView: View {
    var body: some View {
        Text("Selected Chat will Populate Here")
            
    }
}
```
SwiftUI features layout methods called Vertical Stack (VStack), Horizontal Stack (HStack), and Back-to-Front Stack (ZStack). Within each view structure, usage of a VStack embedded with an HStack allows you to dynamically generate discovered users with a for loop.
```
struct listView: View {
    var body: some View {
    VStack() {
        For User : users {
        HStack() {
        Text(users.name)
        }
        .padding()
        }    
    }  
}
```
Similarly, you're able to display chat messages with send/received chats on the respective side using the .allignment methods. With these features combined, I completed various successful test builds that display sudo data. 

Along with the utilities provided natively with SwiftUI, we also decided to incorporate SF Symbols which is Apple's native symbol library. This library includes over 3000 symbols and shapes that will allow us to create a clean UI that matches the MacOS scheme. 

### User Interaction Flow Chart

```mermaid
graph TD;
    A(User Login) --> B[ContentView];
    B --> C(LHS User List View);
    B --> D(RHS Chat View);
    C --> E(Filter);
    C --> F(Search);
    D --> G(Send Chat);
    D --> H(Recieve Chat);
   
   Z(Settings Page) --> Y(TBD Custom Options)
   W(Info Page) --> V(Discription of Project)
```

# Weekly Progress 3/1
## By Deaz Nunoo
For this week we gave out roles and assigned tasks to each member of our team. It was decided that Kyle, Joshua and Gustavo would be working on the frontend, while me and Pride worked on the backend.

# Weekly Progress 2/21
## By Gustavo Lopez
We had our first of two meetings on Tuesday during common hour. During this meeting, we discussed our blog, research we had found, and made it our priority to fix and resubmit the problem statement. Topics such as ports, JSON, encryption, and API calls/headers were to be reviewed before our second meeting. Tuesday's class helped me visualize a bit of what our project will look like. It helped me understand how servers have to be running before client and server connections can even be made. We met again on Friday and discussed our goals for the weekend which were to do the peer assessment before 8pm on Sunday, make sure the blog is up to date and most importantly, create a server and run a client test to make the sure the server works. After Kyle was able to get a server running on python, my groupmates and I were able to connect to it from our computers. This week, we met for a third time on Sunday. During this meeting we discussed the advantages of implementing an application that is accessible locally on a LAN server as opposed to a global server. We slightly discussed strategies for implementing both our back and front ends. We are pretty set on going with py2app for our front-end implementation. With py2app, we'd be able to create a stand-alone application that is accessible from any mac. The best part about it is that we can do it all from the terminal as long we have our python code written.

# Ideating On P2P Implementation 2/21
## By Kyle Gavin 
Over the weekend, I spent time researching p2p networks, their structure and identifying common strategies for implementation. Initially, we came up with a hybrid network for file transfer and messaging. etc., that relies on an addressing server to sync clients. While this allows clients to connect without explicitly entering each other's IP addresses, the program would still work correctly in the case of failure of the addressing system. However, after doing a light mock-up test of this structure, I realized that this wouldn't be feasible. Chat apps, by nature, are more straightforward as a client-server model because you send a message to a server, and the server has a target user with a UUID. UUIDs identify people uniquely as the possibility of two instances generating the same UUID is extremely low. 

Anyhow, a peer-to-peer network on LAN works better because this removes the need for a sync server. This ultimately makes the decision to stick to a LAN-based application more logical. With this LAN-based application, we will also be able to use similar protocols to implement a file share (if desired) along with chat.

# Problem Statement 
Users at Delaware State University need an alternative to GroupMe for class group chats. This is because GroupMe does not provide end-to-end encryption, therefore making it insecure.



