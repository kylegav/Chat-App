# Weekly Progress 3/6
## By Kyle Gavin 
```
public static boolean thisIsCodeBlocks() {
    return true;
}


# Weekly Progress 2/24
## By Kyle Gavin 
Over the weekend I was researching topics regarding p2p networks, their structure, and identifying common strategies for implementation. Originally, I came up with the idea of a hybrid network for file transfer, messaging. etc. that relies on an addressing server to sync clients. While this allows clients to connect without explicitly entering each other's IP addresses, in the case of failure of the addressing system the program would still work properly. After doing a light mock-up test of this type of structure I realized that this wouldn't be feasible. Chat apps by nature are simpler as a client-server model because you send a message to a server and the server has a target user with a UUID. UUIDs are used to identify people uniquely as the possibility of two instances generating the same UUID is extremely low. Anyhow, a peer-to-peer network on LAN works better because this removes the need for a sync server. This ultimately makes the decision to stick to a LAN-based application more logical. With this LAN-based application, we will also be able to use similar protocols to implement a file share (if desired) along with chat.

For front-end development, I've spent some time as well working on a solution to make a lightweight visually appealing model. I suggested to the team a library called py2app which allows you to build macOS applications directly from python source code. I am more enthusiastic about doing a more conventional front-end design in swift or JavaScript. For the design, I'm thinking a sign-on page won't be necessary, rather than a load screen that goes directly into the selection of who you'd like to connect with. The cocoa API by Apple can be combined with py2app to design UI's using Xcodes system. 

# Problem Statement 
Users at Delaware State University need an alternative to GroupMe for class group chats. This is because GroupMe does not provide end-to-end encryption, therefore making it insecure.


