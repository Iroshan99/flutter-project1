import 'package:flutter/material.dart';



class homeprovider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProFinderPage(),
    );
  }
}

class ProFinderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ProFinder',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Service Requests',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ServiceRequest(
                  userName: 'pasindu iroshan',
                  onAccept: () {
                    // Handle accept
                  },
                  onReject: () {
                    // Handle reject
                  },
                ),
                ServiceRequest(
                  userName: 'vidura lakshan',
                  onAccept: () {
                    // Handle accept
                  },
                  onReject: () {
                    // Handle reject
                  },
                ),
                // Add more service requests as needed
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.request_page, color: Colors.white),
              onPressed: () {
                // Handle requests
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {
                // Handle notifications
              },
            ),
            IconButton(
              icon: Icon(Icons.chat, color: Colors.white),
              onPressed: () {
                // Handle chat
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle, color: Colors.white),
              onPressed: () {
                // Handle account
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceRequest extends StatelessWidget {
  final String userName;
  final VoidCallback onAccept;
  final VoidCallback onReject;

  ServiceRequest({
    required this.userName,
    required this.onAccept,
    required this.onReject,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('User: $userName'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: onAccept,
            child: Text(
              'Accept',
              style: TextStyle(color: Colors.green),
            ),
          ),
          TextButton(
            onPressed: onReject,
            child: Text(
              'Reject',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

