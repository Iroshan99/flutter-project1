import 'package:flutter/material.dart';



class electricion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: electricionsPage(),
    );
  }
}

class electricionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Electricions',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          electricionAccount(
            name: 'electricion 1',
            price: '\$50',
            icon: Icons.person,
            onPressed: () {
              // Navigate to plumber 1 details page
            },
          ),
          electricionAccount(
            name: 'electricion 2',
            price: '\$60',
            icon: Icons.person,
            onPressed: () {
              // Navigate to plumber 2 details page
            },
          ),
          electricionAccount(
            name: 'electricion 3',
            price: '\$70',
            icon: Icons.person,
            onPressed: () {
              // Navigate to plumber 3 details page
            },
          ),
          // Add more plumber accounts as needed
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
              icon: Icon(Icons.category, color: Colors.white),
              onPressed: () {
                // Handle category
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

  Widget electricionAccount({required String name, required String price, required IconData icon, required VoidCallback onPressed}) {
    return ListTile(
      leading: IconButton(
        icon: Icon(
          icon,
          color: Colors.blue,
        ),
        onPressed: onPressed,
      ),
      title: Text(name),
      subtitle: Text('Price: $price'),
      trailing: ElevatedButton(
        onPressed: () {
          // Handle service request
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
        ),
        child: Text(
          'Service Request',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
