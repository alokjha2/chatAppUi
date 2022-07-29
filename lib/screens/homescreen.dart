



import 'package:chatui/models/message_model.dart';
import 'package:chatui/models/user_model.dart';
import 'package:chatui/screens/chatscreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        brightness: Brightness.dark,
        leading: Icon(Icons.menu),
        title: Text("Inbox"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search),)
          
        ],
        ),
        body: 
        
        ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context,int index) {
            final Message chat = chats[index];
          return
        
        InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => chatscreen(chat: chat.sender)));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 13, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration:
                      chat.unread==false?
                       BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
        
                        border: Border.all(
                        width: 2,
                        color: Theme.of(context).primaryColor,
                      ),
                      // shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: Colors.grey.withOpacity(0.5,),
                        spreadRadius: 2,
                        blurRadius: 5
        
                        )
                      ]
                      ): 
                       BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
        
                        border: Border.all(
                        width: 2,
                        color: Colors.white
                        // color: Theme.of(context).primaryColor,
                      ),
                      // shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: Colors.grey.withOpacity(0.5,),
                        spreadRadius: 2,
                        blurRadius: 5
        
                        )
                      ]
                      ), 
                      
                      child:  CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(
                          chat.sender.imageUrl
                          )
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.72,
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Row(
                                  children: [
                                    Text(chat.sender.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                                    chat.sender.isOnline==true?
                                    Container(
                                      height: 7,
                                      width: 7,
                                      margin: EdgeInsets.only(left: 4),
                                      decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        shape: BoxShape.circle),

                                      

                                    ): Container(child: null,)
                                  ],
                                ),
                                Text(chat.time, style: TextStyle(fontSize: 12,color: Colors.grey, fontWeight: FontWeight.w400),),
                              ],),
                              SizedBox(height: 2,),
                              Container(
                                child: Text(chat.text, style: TextStyle(fontSize: 13,color: Colors.grey, fontWeight: FontWeight.w400, overflow: TextOverflow.ellipsis, ),maxLines: 2,),
                                )
                            ],
                          ),
                        )
                ],
              )
              ),
            ],
          ),
        );},)
    );
  }
}