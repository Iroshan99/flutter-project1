import 'package:flutter/material.dart';



class caregiver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: caregiversPage(),
    );
  }
}

class caregiversPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'care Givers',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          caregiverAccount(
            name: 'care giver 1',
            price: '\$50',
            icon: Icons.person,
            onPressed: () {
              // Navigate to plumber 1 details page
            },
          ),
          caregiverAccount(
            name: 'care giver 2',
            price: '\$60',
            icon: Icons.person,
            onPressed: () {
              // Navigate to plumber 2 details page
            },
          ),
          caregiverAccount(
            name: 'care giver 3',
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

  Widget caregiverAccount({required String name, required String price, required IconData icon, required VoidCallback onPressed}) {
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
