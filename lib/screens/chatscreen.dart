


import 'package:chatui/models/message_model.dart';
import 'package:chatui/models/user_model.dart';
import 'package:flutter/material.dart';

class chatscreen extends StatefulWidget {
  final  chat;
  chatscreen({Key? key, required this.chat}) : super(key: key);

  @override
  State<chatscreen> createState() => _chatscreenState();
}

class _chatscreenState extends State<chatscreen> {
  


  _chatBubble(Message message, bool isMe, isSameUser){
    if(isMe){
      return 
                  Padding(
                    padding:  const EdgeInsets.only(right: 10),
                    child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // padding: EdgeInsets.only(left: 10),
                          child: Container(

                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.80),
                              
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)),
                              color: Theme.of(context).primaryColor,
                              boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5,),
                              spreadRadius: 2,
                              blurRadius: 5
                            )]
                            ),
                            child: Text(message.text, style: TextStyle(color: Colors.white),),
                          ),
                        ), 
                        !isSameUser?
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                                radius: 14,
                                backgroundImage: AssetImage(
                                  message.sender.imageUrl
                                  )
                                  ),
                                  Text(message.time,style: TextStyle(color: Colors.grey))
                          ],
                        ):Container(child: null,)

                        
                      ],
                    ),
                  );
                  } 
                  else{
              return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // padding: EdgeInsets.only(left: 10),
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.80),
                            
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)),
                            color: Colors.white,
                            boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5,),
                            spreadRadius: 2,
                            blurRadius: 5
                          )]
                          ),
                          child: Text(message.text, style: TextStyle(color: Colors.black54),),
                        ),
                      ), Row(
                        children: [
                          CircleAvatar(
                              radius: 14,
                              backgroundImage: AssetImage(
                                message.sender.imageUrl
                                // chat.sender.imageUrl
                                )
                                ),
                                Text(message.time,style: TextStyle(color: Colors.grey))
                        ],
                      ),

                      
                    ],
                  ),
                  )]
                  );
    

            }

  }

  _sendMessageArea(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.photo),
        iconSize: 25,
        color: Theme.of(context).primaryColor,


        ),

    const Expanded(
      child: TextField(
        decoration: InputDecoration.collapsed(
          hintText: "Send a message"
          ),
        )
      ),

        IconButton(onPressed: (){}, icon: Icon(Icons.send),
        iconSize: 25,
        color: Theme.of(context).primaryColor,


        ),

      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    int? prevUserId;
    return Scaffold(
      appBar: AppBar(
        title: RichText(text: TextSpan(children: [
          TextSpan(text: "${widget.chat.name}\n", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          
          TextSpan(text: widget.chat.isOnline==true? "Online": "Offline", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400))  
        ])),
      ),
      body: Column(
        children: [
          Expanded(
            child: 
            
            ListView.builder(
              itemCount: message.length,
              itemBuilder: (BuildContext context, index) { 
            final Message messages = message[index];
            final bool isMe = messages.sender.id== me.id;
            final bool isSameUser = prevUserId == messages.sender.id;
            prevUserId = messages.sender.id;

            return _chatBubble(messages, isMe, isSameUser);
  })
          ),
          _sendMessageArea()
          // _chatBubble()

        ],
      ),
    );
  }
}