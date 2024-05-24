import 'package:flutter/material.dart';
import 'message.dart';


class ChatsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Chats Tab'),
    );
  }
}

class CallsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Calls Tab'),
    );
  }
}

class CameraTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Camera Tab'),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Add one more tab for the MessagingPage
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp Clone"),
          bottom: TabBar(
            tabs: [
              Tab(text: "Chats"),
              Tab(text: "Calls"),
              Tab(text: "Camera"),
              Tab(text: "Messages"), // Add a tab for the MessagingPage
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ChatsTab(),
            CallsTab(),
            CameraTab(),
            MessagingPage(), // Add the MessagingPage as one of the tabs
          ],
        ),
      ),
    );
  }
}
