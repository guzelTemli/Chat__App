import 'package:chat_app/components/my_drawer.dart';
import 'package:chat_app/components/user_tile.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/services/auth/auth_service.dart';
import 'package:chat_app/services/chat/chat_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

    // chat and auth service 

  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();


  HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey,
        elevation: 0,
        ),
        drawer: MyDrawer(),
        body: _buildUserList(),
    );
  }

  Widget _buildUserList(){
    return StreamBuilder(
      stream: _chatService.getUsersStream(), 
      builder: (context , snapshot) {
          //error
          if(snapshot.hasError){
            return Text("Error");
          }

          //loading...
          if(snapshot.connectionState == ConnectionState.waiting){
            return Text("Loading...");
          }

          //return list view
          return ListView(
            children:snapshot.data!
            .map<Widget>((userData) => _buildUserListItem(userData,context))
            .toList(),
          );
      },
      );
  }

  Widget _buildUserListItem(
    Map<String, dynamic> userData,BuildContext context) {
      //display all users except curent user
      if(userData["email"] != _authService.getCurrentUser()!.email){
        return UserTile(
        text:userData["email"],
        onTap:(){
          //tapped on a user --> go to chat page 
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatPage(
                receiverEmail:userData["email"],
                receiverID: userData["uid"],
              )
              ),
          );
        }
      );

      }else{
        return Container();
      }
  }
}