


import 'package:chatui/models/user_model.dart';

class Message{
  final User sender;
  final String time;
  final bool unread;
  final String text;
  Message({required this.sender,required this.time,required this.unread,required this.text});

}


// chat for home screen
List<Message> chats = [
Message(
  sender: elon,
  time: "10:40 PM",
  unread: true,
  text: "Hey, how is chirkut's going ? Tesla is doing great & spacex also. This time doge?"
  ),


Message(
  sender: kevin,
  time: "5:42 PM",
  unread: false,
  text: "Hey, how is chirkut's going ? Do you need any help ?"
  ),


Message(
  sender: steve,
  time: "3:40 PM",
  unread: false,
  text: "Hey, how is chirkut's doing ? Work on design. your design sucks at login page and user profile page"
  ),
Message(
  sender: bill,
  time: "2:40 AM",
  unread: true,
  text: "How many users do chirkut have ?"
  ),
Message(
  sender: mark,
  time: "12:00 AM",
  unread: false,
  text: "I want to use your code of chirkut in facebook next version"
  ),

];


// chat for chat screens

List<Message> message = [
  Message(
    sender: elon,
    time: "6:40 AM",
    unread: true,
    text: "hello Alok"
    ),


  Message(
    sender: me,
    time: "6:41 AM",
    unread: true,
    text: "hello elon"
    ),


  Message(
    sender: elon,
    time: "6:42 AM",
    unread: true,
    text: "How is chirkut's growth going"
    ),


  Message(
    sender: me,
    time: "6:42 AM",
    unread: true,
    text: "Fine"
    ),


  Message(
    sender: elon,
    time: "6:43 AM",
    unread: true,
    text: "Should I promote chirkut's on my twitter handle?"
    ),

  Message(
    sender: me,
    time: "6:43 AM",
    unread: true,
    text: "no"
    ),


  Message(
    sender: elon,
    time: "6:43 AM",
    unread: true,
    text: "Why?"
    ),


  Message(
    sender: me,
    time: "6:45 AM",
    unread: true,
    text: "I want to learn about branding, marketing, team management while growing your startup, user accuqi. , feedback cycle and many more, so dont' promote it, i will try to manage by myself. Thanks for your help btw."
  ),


  Message(
    sender: elon,
    time: "6:47 AM",
    unread: true,
    text: "Nice. ok fine if you dont need help. Learn as much as you can and enjoy as much as you can."
    ),


  Message(
    sender: me,
    time: "6:48 AM",
    unread: true,
    text: "Ok! i will keep in mind"
    ),

];
